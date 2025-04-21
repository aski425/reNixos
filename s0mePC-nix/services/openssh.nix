{
    config,
    ... 
}: {
    services = {
        openssh = {
            enable = true; 
            allowSFTP = true;
            openFirewall = true;
            ports = [
                49560
            ];

            settings = {
                PrintMotd = false;
                PermitRootLogin = "no";
                PasswordAuthentication = false;
            };
            
            authorizedKeysFiles = [
                config.sops.secrets.sshKey.path
            ];
        };
    };
}
