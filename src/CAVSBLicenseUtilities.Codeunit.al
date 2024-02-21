codeunit 71264323 "CAVSB License Utilities"
{
    internal procedure GetTestProductAppId(): Guid
    var
        AppInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(AppInfo);
        exit(AppInfo.Id);
    end;

    internal procedure GetTestProductKey(CAVExtensionLicense: Record "CAVSB Extension License"): Text
    var
        LicensePlatform: Interface "CAVSB ILicenseCommunicator2";
    begin
        LicensePlatform := CAVExtensionLicense."License Platform";
        exit(LicensePlatform.GetTestProductKey());
    end;
}
