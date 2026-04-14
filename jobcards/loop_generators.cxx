{

    vector<TString> WhichSample; vector<TString> WhichName;

    WhichSample.push_back("samples/NuWro.flat.root"); WhichName.push_back("NuWro");
    WhichSample.push_back("samples/GiBUU.flat.root"); WhichName.push_back("GiBUU");
    //WhichSample.push_back("samples/neut.flat.root"); WhichName.push_back("NEUT");
    WhichSample.push_back("samples/14_1000180400_CC_v3_4_2_G18_10a_02_11a.flat.root"); WhichName.push_back("GENIE");

    gROOT->ProcessLine(".L analyzer.cxx+");

    for (int i =0;i < (int)(WhichSample.size()); i++) {
        gROOT->ProcessLine("analyzer(\""+WhichSample[i]+"\",\""+WhichName[i]+"\").Loop()");
    }
    gROOT->ProcessLine(".q");
};
