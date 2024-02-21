enum 71264323 "CAVSB License Platform" implements "CAVSB ILicenseCommunicator", "CAVSB ILicenseCommunicator2"
{
    Extensible = true;
    DefaultImplementation = "CAVSB ILicenseCommunicator" = "CAVSB Profit Scan Comm.", "CAVSB ILicenseCommunicator2" = "CAVSB Profit Scan Comm.";

    value(0; CavalloProfitScan)
    {
        Caption = 'Cavallo Profit Scan';
        Implementation = "CAVSB ILicenseCommunicator" = "CAVSB Profit Scan Comm.", "CAVSB ILicenseCommunicator2" = "CAVSB Profit Scan Comm.";
    }
}
