OC.L10N.register(
    "user_saml",
    {
    "This user account is disabled, please contact your administrator." : "Ce compte utilisateur est désactivé, veuillez contacter votre administrateur.",
    "Saved" : "Sauvegardé",
    "Unknown error, please check the log file for more details." : "Erreur inconnue, veuillez vérifier le fichier journal pour plus de détails.",
    "Direct log in" : "Connexion direct ",
    "SSO & SAML log in" : "Connexion SSO & SAML",
    "X.509 certificate of the Service Provider" : "Certificat X.509 du fournisseur de service",
    "Private key of the Service Provider" : "Clé privée du fournisseur de service",
    "Indicates that the nameID of the <samlp:logoutRequest> sent by this SP will be encrypted." : "Indique que le \"nameID\" de <samlp:logoutRequest> envoyé par ce SP sera chiffré.",
    "Indicates whether the <samlp:AuthnRequest> messages sent by this SP will be signed. [Metadata of the SP will offer this info]" : "Indique que le <samlp:AuthnRequest> de messages envoyé par SP va être signé. [Métadonnée du SP va donner cette info]",
    "Indicates whether the  <samlp:logoutRequest> messages sent by this SP will be signed." : "Indique si le message <samlp:logoutRequest> envoyé par ce SP sera signé.",
    "Indicates whether the  <samlp:logoutResponse> messages sent by this SP will be signed." : "Indique si le message <samlp:logoutResponse> envoyé par ce SP sera signé.",
    "Whether the metadata should be signed." : "Si les méta-données peuvent-être signées.",
    "Indicates a requirement for the <samlp:Response>, <samlp:LogoutRequest> and <samlp:LogoutResponse> elements received by this SP to be signed." : "Indique que les éléments <samlp:Response>, <samlp:LogoutRequest> et <samlp:LogoutResponse> reçus par ce SP doivent être signés.",
    "Indicates a requirement for the <saml:Assertion> elements received by this SP to be signed. [Metadata of the SP will offer this info]" : "Indique que les éléments <saml:Assertion> reçus par ce SP doivent être signés.[Méta-données du SP offrent cette info]",
    "Indicates a requirement for the <saml:Assertion> elements received by this SP to be encrypted." : "Indique que les éléments <saml:Assertion> reçus par ce SP doivent être chiffrés.",
    " Indicates a requirement for the NameID element on the SAMLResponse received by this SP to be present." : "Indique que l'élément NameID sur la réponse SAML reçu par ce SP doit être présent.",
    "Indicates a requirement for the NameID received by this SP to be encrypted." : "Indique que l'élément NameID sur la réponse SAML reçu par ce SP doit être chiffré.",
    "Indicates if the SP will validate all received XML." : "Indique si le SP validera tous les XML reçus.",
    "ADFS URL-Encodes SAML data as lowercase, and the toolkit by default uses uppercase. Enable for ADFS compatibility on signature verification." : "ADFS encode les données du lien SAML en lettre minuscule alors que la boîte à outil utilise par défaut les lettres majuscules. Activez la compatibilité ADFS pour la vérification de la signature.",
    "Optional display name of the identity provider (default: \"SSO & SAML log in\")" : "Nom d'affichage facultatif du fournisseur d'identité (par défaut : \"Connexion SSO & SAML\")",
    "Attribute to map the UID to." : "Attribut pour relier l'UID.",
    "Only allow authentication if an account exists on some other backend. (e.g. LDAP)" : "Ne permettre l'authentification d'un compte que s'il existe sur un autre système d'authentification. (ex : LDAP)",
    "Allow the use of multiple user back-ends (e.g. LDAP)" : "Autoriser l'utilisation de plusieurs systèmes d'authentification (ex: LDAP)",
    "Attribute to map the displayname to." : "Attribut pour relier le nom d'utilisateur.",
    "Attribute to map the email address to." : "Attribut pour relier l'adresse mail.",
    "Attribute to map the quota to." : "Attribut pour relier le quota.",
    "Attribute to map the users groups to." : "Attribut pour relier les groupes d'utilisateurs.",
    "Use SAML auth for the %s desktop clients (requires user re-authentication)" : "Utiliser l'authentification SAML pour le client bureau de %s (requiert une ré-authentification de l'utilisateur)",
    "SSO & SAML authentication" : "Authentification SSO & SAML",
    "Open documentation" : "Voir la documentation",
    "Please choose whether you want to authenticate using the SAML provider built-in in Nextcloud or whether you want to authenticate against an environment variable." : "Veuillez choisir si vous voulez vous authentifier en utilisant le fournisseur SAML intégré à Nextcloud ou si vous voulez vous authentifier avec une variable d'environnement.",
    "Use built-in SAML authentication" : "Utiliser l'authentification SAML intégrée",
    "Use environment variable" : "Utiliser une variable d’environnement",
    "Make sure to configure an administrative user that can access the instance via SSO. Logging-in with your regular %s account won't be possible anymore, unless you enabled \"%s\"" : "Assurez-vous de configurer un utilisateur administratif qui peut accéder à l'instance par SSO. La connexion avec votre compte %s habituel ne sera plus possible, à moins que vous activiez \"%s\"",
    "General" : "Général",
    "Service Provider Data" : "Service du Fournisseur de Données",
    "If your Service Provider should use certificates you can optionally specify them here." : "Si votre fournisseur de service utilise des certificats, vous pouvez les indiquer ici.",
    "Show Service Provider settings…" : "Afficher les options du fournisseur de service...",
    "Identity Provider Data" : "Fournisseur de données d'identité",
    "Configure your IdP settings here." : "Configurez vos options IdP ici.",
    "Identifier of the IdP entity (must be a URI)" : "Identifiant de l'entité IdP (doit être une URI)",
    "URL Target of the IdP where the SP will send the Authentication Request Message" : "URL cible du fournisseur d'identités à qui le fournisseur de service enverra la requête d'authentification",
    "Show optional Identity Provider settings…" : "Afficher les paramètres optionnels du fournisseur d'identité...",
    "URL Location of the IdP where the SP will send the SLO Request" : "URL du fournisseur d'identité où le fournisseur de service enverra la requête de déconnexion SLO",
    "Public X.509 certificate of the IdP" : "Certificat public X.509 de l'IdP",
    "Attribute mapping" : "Mappage des attributs",
    "If you want to optionally map attributes to the user you can configure these here." : "Si vous préférez relier les attributs à l'utilisateur, vous pouvez les configurer ici.",
    "Show attribute mapping settings…" : "Montrer les paramètres du mappage des attributs...",
    "Security settings" : "Paramètres de sécurité",
    "For increased security we recommend enabling the following settings if supported by your environment." : "Pour augmenté la sécurité nous recommandons d'activer les paramètres suivant si ils sont supportés par votre environnement.",
    "Show security settings…" : "Afficher les paramètres de sécurité...",
    "Signatures and encryption offered" : "Signatures et chiffrement proposés",
    "Signatures and encryption required" : "Signatures et chiffrement obligatoire",
    "Download metadata XML" : "Télécharger les méta-données XML",
    "Metadata invalid" : "Méta-données invalides",
    "Metadata valid" : "Méta-données valides",
    "Account not provisioned." : "Compte non approvisionné.",
    "Your account is not provisioned, access to this service is thus not possible." : "Votre compte n'est pas approvisionné, l'accès à ce service n'est donc pas possible.",
    "Indicates if the SP will validate all received XMLs." : "Indique si le SP validera tous les XMLs reçus.",
    "Only allow authentication if an account is existent on some other backend. (e.g. LDAP)" : "Ne permettre l'authentification d'un compte que s'il existe sur un autre système d'authentification. (ex : LDAP)",
    "Make sure to configure an administrative user that can access the instance via SSO. Logging-in with your regular %s account won't be possible anymore." : "Assurez-vous de configurer un utilisateur administratif qui peut accéder à l'instance par SSO. La connexion avec votre compte %s habituel ne sera plus possible.",
    "Show Service Provider settings ..." : "Afficher les options du fournisseur de service...",
    "Show optional Identity Provider settings ..." : "Afficher les paramètres optionnels du fournisseur d'identité",
    "If you want to optionally map SAML attributes to the user you can configure these here." : "Si vous préférez relier les attributs SAML à l'utilisateur, vous pouvez les configurer ici.",
    "Show attribute mapping settings ..." : "Montrer les paramètres du mappage des attributs...",
    "Show security settings ..." : "Afficher les paramètres de sécurité"
},
"nplurals=2; plural=(n > 1);");
