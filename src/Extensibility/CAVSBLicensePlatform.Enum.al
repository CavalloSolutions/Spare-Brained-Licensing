enum 71264323 "CAVSB License Platform" implements "CAVSB ILicenseCommunicator", "CAVSB ILicenseCommunicator2"
{
    Extensible = true;
    DefaultImplementation = "CAVSB ILicenseCommunicator" = "CAVSB Test Comm.", "CAVSB ILicenseCommunicator2" = "CAVSB Test Comm.";

    value(0; CavalloTest)
    {
        Caption = 'Cavallo Test';
        Implementation = "CAVSB ILicenseCommunicator" = "CAVSB Test Comm.", "CAVSB ILicenseCommunicator2" = "CAVSB Test Comm.";
    }
}
