package com.cmssp.module.main;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;

import com.cmssp.R;
import com.cmssp.module.cmsense.FTSFragment;
import com.cmssp.module.disease.DiseaseFragment;
import com.cmssp.module.drug.DrugMaterialFragment;
import com.cmssp.module.massage.ChannelFragment;
import com.ox.base.BaseActivity;
import com.ox.base.BaseFragment;

import java.util.Arrays;
import java.util.List;

import butterknife.BindView;

public class CMMainActivity extends BaseActivity {

    //常见疾病
    private DiseaseFragment diseaseFragment;
    //穴位按摩
    private ChannelFragment channelFragment;
    //药材药方
    private DrugMaterialFragment drugMaterialFragment;
    //FTS搜索
    private FTSFragment fTSFragment;

    private FragmentManager mFragmentManager;

    private FragmentTransaction mTransaction;

    private List<BaseFragment> allFragments;

    private static final int INDEX_FTSFRAGMENT = 0;
    private static final int INDEX_DISEASEFRAGMENT = 1;
    private static final int INDEX_CHANNELPOINTFRAGMENT = 2;
    private static final int INDEX_DRUGMATERIALFRAGMENT = 3;

    private final String SAVE_FRAGMENT_INDEX = "SAVE_FRAGMENT_INDEX";

    private int mCurrentFragmentIndex = 0;

    @BindView(R.id.naviRadioGroup)
    RadioGroup radioGroup;

    @BindView(R.id.btnDisease)
    RadioButton diseaseButton;

    @BindView(R.id.btnChannel)
    RadioButton channelButton;

    @BindView(R.id.btnDrug)
    RadioButton drugButton;

    @BindView(R.id.btnCMSense)
    RadioButton senseButton;

    @Override
    public int getLayout() {
        return R.layout.activity_cm;
    }

    @Override
    public void initView(Bundle savedInstanceState) {
        mFragmentManager = getFragmentManager();
        initFragments(savedInstanceState);

        RadioCheckedListener listener = new RadioCheckedListener();
        diseaseButton.setOnCheckedChangeListener(listener);
        channelButton.setOnCheckedChangeListener(listener);
        drugButton.setOnCheckedChangeListener(listener);
        senseButton.setOnCheckedChangeListener(listener);

        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                checkRadio(checkedId);
            }
        });
    }

    private void initFragments(Bundle savedInstanceState) {
        if (savedInstanceState == null){
            createFragments();
            radioGroup.check(R.id.btnDisease);
            changeRadioDrawableTop(R.id.btnDisease , true);
        }else{
            restoreFragments(savedInstanceState);
        }
    }

    private void restoreFragments(Bundle savedInstanceState) {
        diseaseFragment = (DiseaseFragment)mFragmentManager.findFragmentByTag(DiseaseFragment.class.getName());
        channelFragment = (ChannelFragment)mFragmentManager.findFragmentByTag(ChannelFragment.class.getName());
        drugMaterialFragment = (DrugMaterialFragment)mFragmentManager.findFragmentByTag(DrugMaterialFragment.class.getName());
        fTSFragment = (FTSFragment)mFragmentManager.findFragmentByTag(FTSFragment.class.getName());
        allFragments = Arrays.asList(diseaseFragment , channelFragment, drugMaterialFragment , fTSFragment);

        int index = savedInstanceState.getInt(SAVE_FRAGMENT_INDEX);
        mTransaction = mFragmentManager.beginTransaction();

        switch (index){
            case INDEX_DISEASEFRAGMENT :
                radioGroup.check(R.id.btnDisease);
                changeRadioDrawableTop(R.id.btnDisease , true);
                break;
            case INDEX_CHANNELPOINTFRAGMENT:
                radioGroup.check(R.id.btnChannel);
                changeRadioDrawableTop(R.id.btnChannel, true);
                break;
            case INDEX_DRUGMATERIALFRAGMENT:
                radioGroup.check(R.id.btnDrug);
                changeRadioDrawableTop(R.id.btnDrug , true);
                break;
            case INDEX_FTSFRAGMENT:
                radioGroup.check(R.id.btnCMSense);
                changeRadioDrawableTop(R.id.btnCMSense , true);
                break;
            default:
                break;
        }

        mTransaction.show(allFragments.get(index)).commit();
    }

    private void createFragments() {
        diseaseFragment = new DiseaseFragment();
        channelFragment = new ChannelFragment();
        drugMaterialFragment = new DrugMaterialFragment();
        fTSFragment = new FTSFragment();

        mTransaction = mFragmentManager.beginTransaction();
        mTransaction.add(R.id.main_fragment_container , diseaseFragment , DiseaseFragment.class.getName()).hide(diseaseFragment)
                .add(R.id.main_fragment_container , channelFragment, ChannelFragment.class.getName()).hide(channelFragment)
                .add(R.id.main_fragment_container , drugMaterialFragment, DrugMaterialFragment.class.getName()).hide(drugMaterialFragment)
                .add(R.id.main_fragment_container , fTSFragment, FTSFragment.class.getName()).hide(fTSFragment);

        mTransaction.show(diseaseFragment);
        mTransaction.commit();

        allFragments = Arrays.asList(diseaseFragment , channelFragment, drugMaterialFragment , fTSFragment);
    }

    private final void hideAllFragments() {
        for (Fragment f : allFragments) {
            mTransaction.hide(f);
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);

        outState.putInt(SAVE_FRAGMENT_INDEX , mCurrentFragmentIndex);
    }

    @Override
    protected void initData() {
        super.initData();
    }

    class RadioCheckedListener implements CompoundButton.OnCheckedChangeListener{
        @Override
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            changeRadioDrawableTop(buttonView.getId() , isChecked);
        }
    }

    private void checkRadio(int checkedId){
        switch (checkedId){
            case R.id.btnDisease:
                mCurrentFragmentIndex = INDEX_DISEASEFRAGMENT;
                break;
            case R.id.btnChannel:
                mCurrentFragmentIndex = INDEX_CHANNELPOINTFRAGMENT;
                break;
            case R.id.btnDrug:
                mCurrentFragmentIndex = INDEX_DRUGMATERIALFRAGMENT;
                break;
            case R.id.btnCMSense:
                mCurrentFragmentIndex = INDEX_FTSFRAGMENT;
                break;
            default:
                break;
        }
        mTransaction = mFragmentManager.beginTransaction();
        hideAllFragments();
        mTransaction.show(allFragments.get(mCurrentFragmentIndex)).commit();
        mLogger.i(" checked index :" + mCurrentFragmentIndex);
    }

    private void changeRadioDrawableTop(int resId , boolean isChecked){
        RadioButton buttonView = (RadioButton)findViewById(resId);
        String tag = buttonView.getText().toString();
        if (tag.equals("disease")){
            buttonView.setCompoundDrawablesWithIntrinsicBounds(0 , isChecked ? R.drawable.disease_48_pressed:R.drawable.disease_48_normal, 0 ,0);
        }else if (tag.equals("massage")){
            buttonView.setCompoundDrawablesWithIntrinsicBounds(0 , isChecked ? R.drawable.channel_48_pressed :R.drawable.channel_48_normal, 0 ,0);
        }
        else if (tag.equals("drugmaterial")){
            buttonView.setCompoundDrawablesWithIntrinsicBounds(0 , isChecked ? R.drawable.material_48_pressed:R.drawable.material_48_normal, 0 ,0);
        }
        else if (tag.equals("sense")){
            buttonView.setCompoundDrawablesWithIntrinsicBounds(0 , isChecked ? R.drawable.sense_48_pressed:R.drawable.sense_48_normal, 0 ,0);
        }

        mLogger.i("who : " + buttonView.getText() + " isChecked : " + isChecked);
    }
}
