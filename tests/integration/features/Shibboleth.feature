Feature: Shibboleth

  Scenario: Authenticating using Shibboleth with SAML and check if user exists on backend and not existing user
    Given The setting "type" is set to "saml"
    And The setting "general-require_provisioned_account" is set to "1"
    And The setting "general-uid_mapping" is set to "urn:oid:0.9.2342.19200300.100.1.1"
    And The setting "idp-entityId" is set to "https://shibboleth-integration-nextcloud.localdomain/idp/shibboleth"
    And The setting "idp-singleSignOnService.url" is set to "https://localhost:4443/idp/profile/SAML2/Redirect/SSO"
    And The setting "idp-x509cert" is set to "MIIDnTCCAoWgAwIBAgIUGPx9uPjCu7c172IUgV84Tm94pBcwDQYJKoZIhvcNAQEL BQAwNzE1MDMGA1UEAwwsc2hpYmJvbGV0aC1pbnRlZ3JhdGlvbi1uZXh0Y2xvdWQu bG9jYWxkb21haW4wHhcNMTcwMTA0MTAxMTI3WhcNMzcwMTA0MTAxMTI3WjA3MTUw MwYDVQQDDCxzaGliYm9sZXRoLWludGVncmF0aW9uLW5leHRjbG91ZC5sb2NhbGRv bWFpbjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKH+bPu45tk8/JRk XOxkyfbxocWZlY4mRumEUxscd3fn0oVzOrdWbHH7lCZV4bus4KxvJljc0Nm2K+Zr LoiRUUnf/LQ4LlehWVm5Kbc4kRgOXS0iGZN3SslAWPKyIg0tywg+TLOBPoS6EtST 1WuYg1JPMFxPfeFDWQ0dQYPlXIJWBFh6F2JMTb0FLECqA5l/ryYE13QisX5l+Mqo 6y3Dh7qIgaH0IJNobXoAcEWza7Kb2RnfhZRh9e0qjZIwBqTJUFM/6I86RYXn829s INUvYQQbez6VkGTdUQJ/GuXb/dD5sMQfOyK8hrRY5MozOmK32cz3JaAzSXpiSRS9 NxFwvicCAwEAAaOBoDCBnTAdBgNVHQ4EFgQUKn8+TV0WXSDeavvF0M8mWn1o8ukw fAYDVR0RBHUwc4Isc2hpYmJvbGV0aC1pbnRlZ3JhdGlvbi1uZXh0Y2xvdWQubG9j YWxkb21haW6GQ2h0dHBzOi8vc2hpYmJvbGV0aC1pbnRlZ3JhdGlvbi1uZXh0Y2xv dWQubG9jYWxkb21haW4vaWRwL3NoaWJib2xldGgwDQYJKoZIhvcNAQELBQADggEB ABI6uzoIeLZT9Az2KTlLxIc6jZ4MDmhaVja4ZuBxTXEb7BFLfeASEJmQm1wgIMOn pJId3Kh3njW+3tOBWKm7lj8JxVVpAu4yMFSoQGPaVUgYB1AVm+pmAyPLzfJ/XGhf esCU2F/b0eHWcaIb3x+BZFX089Cd/PBtP84MNXdo+TccibxC8N39sr45qJM/7SC7 TfDYU0L4q2WZHJr4S7+0F+F4KaxLx9NzCvN4h6XaoWofZWir2iHO4NzbrVQGC0ei QybS/neBfni4A2g1lyzCb6xFB58JBvNCn7AAnDJULOE7S5XWUKsDAQVQrxTNkUq7 pnhlCQqZDwUdgmIXd1KB1So="
    And The setting "security-authnRequestsSigned" is set to "1"
    And The setting "security-wantAssertionsEncrypted" is set to "1"
    And The setting "sp-x509cert" is set to "-----BEGIN CERTIFICATE-----MIIC+zCCAeOgAwIBAgIJAIgZuvWDBIrdMA0GCSqGSIb3DQEBBQUAMBQxEjAQBgNVBAMMCWxvY2FsaG9zdDAeFw0xNzAxMDQxMTM5MjFaFw0yNzAxMDIxMTM5MjFaMBQxEjAQBgNVBAMMCWxvY2FsaG9zdDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN3ESWaDH1JiJTy9yRJQV7kahPOxgBkIH2xwcYDL1k9deKNhSKLx7aGfxE244+HBcC6WLHKVUnOm0ld2qxQ4bMYiJXzZuqL67r07L5wxGAssv12lO92qohGmlHy3+VzRYUBmovu6upqOv3R2F8HBbo7Jc7Hvt7hOEJn/jPuFuF/fHit3mqU8l6IkrIZjpaW8T9fIWOXRq98U4+hkgWpqEZWsqlfE8BxAs9DeIMZab0GxO9stHLp+GYKx10uE4ezFcaDS8W+g2C8enCTt1HXGvcnj4o5zkC1lITGvcFTsiFqfIWyXeSufcxdc0W7HoG6J3ks0WJyK38sfFn0t2Ao6kX0CAwEAAaNQME4wHQYDVR0OBBYEFAoJzX6TVYAwC1GSPe6nObBG54zaMB8GA1UdIwQYMBaAFAoJzX6TVYAwC1GSPe6nObBG54zaMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADggEBAJia9R70uXdUZtgujUPjLas4+sVajzlBFmqhBqpLAo934vljf9HISsHrPtdBcbS0d0rucqXwabDf0MlR18ksnT/NYpsTwMbMx76CrXi4zYEEW5lISKEO65aIkzVTcqKWSuhjtSnRdB6iOLsFiKmNMWXaIKMR5T0+AbR9wdQgn08W+3EEeHGvafVQfE3STVsSgNb1ft7DvcSUnfPXGU7KzvmTpZa0Hfmc7uY4vpdEEhLAdRhgLReS7USZskov7ooiPSoD+JRFi2gM4klBxTemHdNUa9oFnHMXuYKOkLbkgFvHxyy+QlLq2ELQTga5e7I83ZyOfGctyf8Ul6vGw10vbQ=-----END CERTIFICATE-----"
    And The setting "sp-privateKey" is set to "-----BEGIN RSA PRIVATE KEY-----MIIEpAIBAAKCAQEA3cRJZoMfUmIlPL3JElBXuRqE87GAGQgfbHBxgMvWT114o2FIovHtoZ/ETbjj4cFwLpYscpVSc6bSV3arFDhsxiIlfNm6ovruvTsvnDEYCyy/XaU73aqiEaaUfLf5XNFhQGai+7q6mo6/dHYXwcFujslzse+3uE4Qmf+M+4W4X98eK3eapTyXoiSshmOlpbxP18hY5dGr3xTj6GSBamoRlayqV8TwHECz0N4gxlpvQbE72y0cun4ZgrHXS4Th7MVxoNLxb6DYLx6cJO3Udca9yePijnOQLWUhMa9wVOyIWp8hbJd5K59zF1zRbsegboneSzRYnIrfyx8WfS3YCjqRfQIDAQABAoIBAQC5CQAdcqZ9vLpJNilBCJxJLCFmm+HAAREHD8MErg9A5UK1P4S1wJp/0qieGPi68wXBOTgY2xKSwMycgb04/+NyZidVRu388takOW/+KNBg8pMxdZ6/05GqnI0kivSbR3CXpYuz8hekwhpo9+fWmKjApsHL47ItK6WaeKmPbAFsq1YJGzfp/DXg7LIvh9GA3C1LWWGV7SuCGOyX/2Moi8xRa7qBtH4hDo/0NRhTx7zjYjlBgNEr330pJUopc3+AtHE40R+xMr2zkGvq9RsCZxYxD2VWbLwQW0yNjWmQ2OTuMgJJvk2+N73QLHcB+tea82ZTszsNzRS9DLtc6qbsKEPZAoGBAO78U3vEuRyY56f/1hpo0xuCDwOkWGzgBQWkjJl6dlyVz/zKkhXBHpEYImyt8XRN0W3iGZYpZ2hCFJGTcDp32R6UiEyGLz0Uc8R/tva/TiRVW1FdNczzSHcB24b9OMK4vE9JLs8mA8Rp8YBgtLr5DDuMfYt/a/rZJbg/HIfIN98nAoGBAO2OInCX93t2I6zzRPIqKtI6q6FYNp64VIQjvw9Y8l0x3IdJZRP9H5C8ZhCeYPsgEqTXcXa4j5hL4rQzoUtxfxflBUUH60bcnd4LGaTCMYLS14G011E3GZlIP0sJi5OjEhy8fq3zt6jVzS9V/lPHB8i+w1D7CbPrMpW7B3k32vC7AoGAX/HvdkYhZyjAAEOG6m1hK68IZhbp5TP+8CgCxm9S65K9wKh3A8LXibrdvzIKOP4w8WOPkCipOkMlTNibeu24vj01hztr5aK7Y40+oEtnjNCz67N3MQQO+LBHOSeaTRqrh01DPKjvZECAU2D/zfzEe3fIw2Nxr3DUYub7hkvMmosCgYAzxbVVypjiLGYsDDyrdmsstCKxoDMPNmcdAVljc+QmUXaZeXJw/8qAVb78wjeqo1vM1zNgR2rsKyW2VkZB1fN39q7GU6qAIBa7zLmDAduegmr7VrlSduq6UFeS9/qWa4TIBICrUqFlR2tXdKtgANF+e6y/mmaL8qdsoH1JetXZfwKBgQC1vscRpdAXivjOOZAh+mzJWzS4BUl4CTJLYYIuOEXikmN5g0EdV2fhUEdkewmyKnXHsd0x83167bYgpTDNs71jUxDHy5NXlg2qIjLkf09X9wr19gBzDApfWzfh3vUqttyMZuQMLVNepGCWM2vjlY9KGl5OvZqY6d+7yO0mLV9GmQ==-----END RSA PRIVATE KEY-----"
    And The setting "security-wantAssertionsSigned" is set to "1"
    When I send a GET request to "http://localhost/index.php/login"
    Then I should be redirected to "https://localhost:4443/idp/profile/SAML2/Redirect/SSO"
    And I send a POST request to "https://localhost:4443/idp/profile/SAML2/Redirect/SSO?execution=e1s1" with the following data
      |j_username|j_password|_eventId_proceed|
      |student1  |password  |                |
    And The response should be a SAML redirect page that gets submitted
    And I should be redirected to "http://localhost/index.php/apps/user_saml/saml/notProvisioned"

  Scenario: Authenticating using Shibboleth with SAML and no check if user exists on backend
    Given The setting "type" is set to "saml"
    And The setting "general-uid_mapping" is set to "urn:oid:0.9.2342.19200300.100.1.1"
    And The setting "idp-entityId" is set to "https://shibboleth-integration-nextcloud.localdomain/idp/shibboleth"
    And The setting "idp-singleSignOnService.url" is set to "https://localhost:4443/idp/profile/SAML2/Redirect/SSO"
    And The setting "idp-x509cert" is set to "MIIDnTCCAoWgAwIBAgIUGPx9uPjCu7c172IUgV84Tm94pBcwDQYJKoZIhvcNAQEL BQAwNzE1MDMGA1UEAwwsc2hpYmJvbGV0aC1pbnRlZ3JhdGlvbi1uZXh0Y2xvdWQu bG9jYWxkb21haW4wHhcNMTcwMTA0MTAxMTI3WhcNMzcwMTA0MTAxMTI3WjA3MTUw MwYDVQQDDCxzaGliYm9sZXRoLWludGVncmF0aW9uLW5leHRjbG91ZC5sb2NhbGRv bWFpbjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKH+bPu45tk8/JRk XOxkyfbxocWZlY4mRumEUxscd3fn0oVzOrdWbHH7lCZV4bus4KxvJljc0Nm2K+Zr LoiRUUnf/LQ4LlehWVm5Kbc4kRgOXS0iGZN3SslAWPKyIg0tywg+TLOBPoS6EtST 1WuYg1JPMFxPfeFDWQ0dQYPlXIJWBFh6F2JMTb0FLECqA5l/ryYE13QisX5l+Mqo 6y3Dh7qIgaH0IJNobXoAcEWza7Kb2RnfhZRh9e0qjZIwBqTJUFM/6I86RYXn829s INUvYQQbez6VkGTdUQJ/GuXb/dD5sMQfOyK8hrRY5MozOmK32cz3JaAzSXpiSRS9 NxFwvicCAwEAAaOBoDCBnTAdBgNVHQ4EFgQUKn8+TV0WXSDeavvF0M8mWn1o8ukw fAYDVR0RBHUwc4Isc2hpYmJvbGV0aC1pbnRlZ3JhdGlvbi1uZXh0Y2xvdWQubG9j YWxkb21haW6GQ2h0dHBzOi8vc2hpYmJvbGV0aC1pbnRlZ3JhdGlvbi1uZXh0Y2xv dWQubG9jYWxkb21haW4vaWRwL3NoaWJib2xldGgwDQYJKoZIhvcNAQELBQADggEB ABI6uzoIeLZT9Az2KTlLxIc6jZ4MDmhaVja4ZuBxTXEb7BFLfeASEJmQm1wgIMOn pJId3Kh3njW+3tOBWKm7lj8JxVVpAu4yMFSoQGPaVUgYB1AVm+pmAyPLzfJ/XGhf esCU2F/b0eHWcaIb3x+BZFX089Cd/PBtP84MNXdo+TccibxC8N39sr45qJM/7SC7 TfDYU0L4q2WZHJr4S7+0F+F4KaxLx9NzCvN4h6XaoWofZWir2iHO4NzbrVQGC0ei QybS/neBfni4A2g1lyzCb6xFB58JBvNCn7AAnDJULOE7S5XWUKsDAQVQrxTNkUq7 pnhlCQqZDwUdgmIXd1KB1So="
    And The setting "security-authnRequestsSigned" is set to "1"
    And The setting "security-wantAssertionsEncrypted" is set to "1"
    And The setting "sp-x509cert" is set to "-----BEGIN CERTIFICATE-----MIIC+zCCAeOgAwIBAgIJAIgZuvWDBIrdMA0GCSqGSIb3DQEBBQUAMBQxEjAQBgNVBAMMCWxvY2FsaG9zdDAeFw0xNzAxMDQxMTM5MjFaFw0yNzAxMDIxMTM5MjFaMBQxEjAQBgNVBAMMCWxvY2FsaG9zdDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN3ESWaDH1JiJTy9yRJQV7kahPOxgBkIH2xwcYDL1k9deKNhSKLx7aGfxE244+HBcC6WLHKVUnOm0ld2qxQ4bMYiJXzZuqL67r07L5wxGAssv12lO92qohGmlHy3+VzRYUBmovu6upqOv3R2F8HBbo7Jc7Hvt7hOEJn/jPuFuF/fHit3mqU8l6IkrIZjpaW8T9fIWOXRq98U4+hkgWpqEZWsqlfE8BxAs9DeIMZab0GxO9stHLp+GYKx10uE4ezFcaDS8W+g2C8enCTt1HXGvcnj4o5zkC1lITGvcFTsiFqfIWyXeSufcxdc0W7HoG6J3ks0WJyK38sfFn0t2Ao6kX0CAwEAAaNQME4wHQYDVR0OBBYEFAoJzX6TVYAwC1GSPe6nObBG54zaMB8GA1UdIwQYMBaAFAoJzX6TVYAwC1GSPe6nObBG54zaMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADggEBAJia9R70uXdUZtgujUPjLas4+sVajzlBFmqhBqpLAo934vljf9HISsHrPtdBcbS0d0rucqXwabDf0MlR18ksnT/NYpsTwMbMx76CrXi4zYEEW5lISKEO65aIkzVTcqKWSuhjtSnRdB6iOLsFiKmNMWXaIKMR5T0+AbR9wdQgn08W+3EEeHGvafVQfE3STVsSgNb1ft7DvcSUnfPXGU7KzvmTpZa0Hfmc7uY4vpdEEhLAdRhgLReS7USZskov7ooiPSoD+JRFi2gM4klBxTemHdNUa9oFnHMXuYKOkLbkgFvHxyy+QlLq2ELQTga5e7I83ZyOfGctyf8Ul6vGw10vbQ=-----END CERTIFICATE-----"
    And The setting "sp-privateKey" is set to "-----BEGIN RSA PRIVATE KEY-----MIIEpAIBAAKCAQEA3cRJZoMfUmIlPL3JElBXuRqE87GAGQgfbHBxgMvWT114o2FIovHtoZ/ETbjj4cFwLpYscpVSc6bSV3arFDhsxiIlfNm6ovruvTsvnDEYCyy/XaU73aqiEaaUfLf5XNFhQGai+7q6mo6/dHYXwcFujslzse+3uE4Qmf+M+4W4X98eK3eapTyXoiSshmOlpbxP18hY5dGr3xTj6GSBamoRlayqV8TwHECz0N4gxlpvQbE72y0cun4ZgrHXS4Th7MVxoNLxb6DYLx6cJO3Udca9yePijnOQLWUhMa9wVOyIWp8hbJd5K59zF1zRbsegboneSzRYnIrfyx8WfS3YCjqRfQIDAQABAoIBAQC5CQAdcqZ9vLpJNilBCJxJLCFmm+HAAREHD8MErg9A5UK1P4S1wJp/0qieGPi68wXBOTgY2xKSwMycgb04/+NyZidVRu388takOW/+KNBg8pMxdZ6/05GqnI0kivSbR3CXpYuz8hekwhpo9+fWmKjApsHL47ItK6WaeKmPbAFsq1YJGzfp/DXg7LIvh9GA3C1LWWGV7SuCGOyX/2Moi8xRa7qBtH4hDo/0NRhTx7zjYjlBgNEr330pJUopc3+AtHE40R+xMr2zkGvq9RsCZxYxD2VWbLwQW0yNjWmQ2OTuMgJJvk2+N73QLHcB+tea82ZTszsNzRS9DLtc6qbsKEPZAoGBAO78U3vEuRyY56f/1hpo0xuCDwOkWGzgBQWkjJl6dlyVz/zKkhXBHpEYImyt8XRN0W3iGZYpZ2hCFJGTcDp32R6UiEyGLz0Uc8R/tva/TiRVW1FdNczzSHcB24b9OMK4vE9JLs8mA8Rp8YBgtLr5DDuMfYt/a/rZJbg/HIfIN98nAoGBAO2OInCX93t2I6zzRPIqKtI6q6FYNp64VIQjvw9Y8l0x3IdJZRP9H5C8ZhCeYPsgEqTXcXa4j5hL4rQzoUtxfxflBUUH60bcnd4LGaTCMYLS14G011E3GZlIP0sJi5OjEhy8fq3zt6jVzS9V/lPHB8i+w1D7CbPrMpW7B3k32vC7AoGAX/HvdkYhZyjAAEOG6m1hK68IZhbp5TP+8CgCxm9S65K9wKh3A8LXibrdvzIKOP4w8WOPkCipOkMlTNibeu24vj01hztr5aK7Y40+oEtnjNCz67N3MQQO+LBHOSeaTRqrh01DPKjvZECAU2D/zfzEe3fIw2Nxr3DUYub7hkvMmosCgYAzxbVVypjiLGYsDDyrdmsstCKxoDMPNmcdAVljc+QmUXaZeXJw/8qAVb78wjeqo1vM1zNgR2rsKyW2VkZB1fN39q7GU6qAIBa7zLmDAduegmr7VrlSduq6UFeS9/qWa4TIBICrUqFlR2tXdKtgANF+e6y/mmaL8qdsoH1JetXZfwKBgQC1vscRpdAXivjOOZAh+mzJWzS4BUl4CTJLYYIuOEXikmN5g0EdV2fhUEdkewmyKnXHsd0x83167bYgpTDNs71jUxDHy5NXlg2qIjLkf09X9wr19gBzDApfWzfh3vUqttyMZuQMLVNepGCWM2vjlY9KGl5OvZqY6d+7yO0mLV9GmQ==-----END RSA PRIVATE KEY-----"
    And The setting "security-wantAssertionsSigned" is set to "1"
    When I send a GET request to "http://localhost/index.php/login"
    Then I should be redirected to "https://localhost:4443/idp/profile/SAML2/Redirect/SSO"
    And I send a POST request to "https://localhost:4443/idp/profile/SAML2/Redirect/SSO?execution=e1s1" with the following data
     |j_username|j_password|_eventId_proceed|
     |student1  |password  |                |
    And The response should be a SAML redirect page that gets submitted
    And I should be redirected to "http://localhost/index.php/apps/files/"
    And I should be logged-in to Nextcloud as user "student1"

  Scenario: Authenticating using Shibboleth with SAML and check if user exists on backend and existing user
    Given A local user with uid "student1" exists
    And The setting "type" is set to "saml"
    And The setting "general-require_provisioned_account" is set to "1"
    And The setting "general-uid_mapping" is set to "urn:oid:0.9.2342.19200300.100.1.1"
    And The setting "idp-entityId" is set to "https://shibboleth-integration-nextcloud.localdomain/idp/shibboleth"
    And The setting "idp-singleSignOnService.url" is set to "https://localhost:4443/idp/profile/SAML2/Redirect/SSO"
    And The setting "idp-x509cert" is set to "MIIDnTCCAoWgAwIBAgIUGPx9uPjCu7c172IUgV84Tm94pBcwDQYJKoZIhvcNAQEL BQAwNzE1MDMGA1UEAwwsc2hpYmJvbGV0aC1pbnRlZ3JhdGlvbi1uZXh0Y2xvdWQu bG9jYWxkb21haW4wHhcNMTcwMTA0MTAxMTI3WhcNMzcwMTA0MTAxMTI3WjA3MTUw MwYDVQQDDCxzaGliYm9sZXRoLWludGVncmF0aW9uLW5leHRjbG91ZC5sb2NhbGRv bWFpbjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKH+bPu45tk8/JRk XOxkyfbxocWZlY4mRumEUxscd3fn0oVzOrdWbHH7lCZV4bus4KxvJljc0Nm2K+Zr LoiRUUnf/LQ4LlehWVm5Kbc4kRgOXS0iGZN3SslAWPKyIg0tywg+TLOBPoS6EtST 1WuYg1JPMFxPfeFDWQ0dQYPlXIJWBFh6F2JMTb0FLECqA5l/ryYE13QisX5l+Mqo 6y3Dh7qIgaH0IJNobXoAcEWza7Kb2RnfhZRh9e0qjZIwBqTJUFM/6I86RYXn829s INUvYQQbez6VkGTdUQJ/GuXb/dD5sMQfOyK8hrRY5MozOmK32cz3JaAzSXpiSRS9 NxFwvicCAwEAAaOBoDCBnTAdBgNVHQ4EFgQUKn8+TV0WXSDeavvF0M8mWn1o8ukw fAYDVR0RBHUwc4Isc2hpYmJvbGV0aC1pbnRlZ3JhdGlvbi1uZXh0Y2xvdWQubG9j YWxkb21haW6GQ2h0dHBzOi8vc2hpYmJvbGV0aC1pbnRlZ3JhdGlvbi1uZXh0Y2xv dWQubG9jYWxkb21haW4vaWRwL3NoaWJib2xldGgwDQYJKoZIhvcNAQELBQADggEB ABI6uzoIeLZT9Az2KTlLxIc6jZ4MDmhaVja4ZuBxTXEb7BFLfeASEJmQm1wgIMOn pJId3Kh3njW+3tOBWKm7lj8JxVVpAu4yMFSoQGPaVUgYB1AVm+pmAyPLzfJ/XGhf esCU2F/b0eHWcaIb3x+BZFX089Cd/PBtP84MNXdo+TccibxC8N39sr45qJM/7SC7 TfDYU0L4q2WZHJr4S7+0F+F4KaxLx9NzCvN4h6XaoWofZWir2iHO4NzbrVQGC0ei QybS/neBfni4A2g1lyzCb6xFB58JBvNCn7AAnDJULOE7S5XWUKsDAQVQrxTNkUq7 pnhlCQqZDwUdgmIXd1KB1So="
    And The setting "security-authnRequestsSigned" is set to "1"
    And The setting "security-wantAssertionsEncrypted" is set to "1"
    And The setting "sp-x509cert" is set to "-----BEGIN CERTIFICATE-----MIIC+zCCAeOgAwIBAgIJAIgZuvWDBIrdMA0GCSqGSIb3DQEBBQUAMBQxEjAQBgNVBAMMCWxvY2FsaG9zdDAeFw0xNzAxMDQxMTM5MjFaFw0yNzAxMDIxMTM5MjFaMBQxEjAQBgNVBAMMCWxvY2FsaG9zdDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN3ESWaDH1JiJTy9yRJQV7kahPOxgBkIH2xwcYDL1k9deKNhSKLx7aGfxE244+HBcC6WLHKVUnOm0ld2qxQ4bMYiJXzZuqL67r07L5wxGAssv12lO92qohGmlHy3+VzRYUBmovu6upqOv3R2F8HBbo7Jc7Hvt7hOEJn/jPuFuF/fHit3mqU8l6IkrIZjpaW8T9fIWOXRq98U4+hkgWpqEZWsqlfE8BxAs9DeIMZab0GxO9stHLp+GYKx10uE4ezFcaDS8W+g2C8enCTt1HXGvcnj4o5zkC1lITGvcFTsiFqfIWyXeSufcxdc0W7HoG6J3ks0WJyK38sfFn0t2Ao6kX0CAwEAAaNQME4wHQYDVR0OBBYEFAoJzX6TVYAwC1GSPe6nObBG54zaMB8GA1UdIwQYMBaAFAoJzX6TVYAwC1GSPe6nObBG54zaMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADggEBAJia9R70uXdUZtgujUPjLas4+sVajzlBFmqhBqpLAo934vljf9HISsHrPtdBcbS0d0rucqXwabDf0MlR18ksnT/NYpsTwMbMx76CrXi4zYEEW5lISKEO65aIkzVTcqKWSuhjtSnRdB6iOLsFiKmNMWXaIKMR5T0+AbR9wdQgn08W+3EEeHGvafVQfE3STVsSgNb1ft7DvcSUnfPXGU7KzvmTpZa0Hfmc7uY4vpdEEhLAdRhgLReS7USZskov7ooiPSoD+JRFi2gM4klBxTemHdNUa9oFnHMXuYKOkLbkgFvHxyy+QlLq2ELQTga5e7I83ZyOfGctyf8Ul6vGw10vbQ=-----END CERTIFICATE-----"
    And The setting "sp-privateKey" is set to "-----BEGIN RSA PRIVATE KEY-----MIIEpAIBAAKCAQEA3cRJZoMfUmIlPL3JElBXuRqE87GAGQgfbHBxgMvWT114o2FIovHtoZ/ETbjj4cFwLpYscpVSc6bSV3arFDhsxiIlfNm6ovruvTsvnDEYCyy/XaU73aqiEaaUfLf5XNFhQGai+7q6mo6/dHYXwcFujslzse+3uE4Qmf+M+4W4X98eK3eapTyXoiSshmOlpbxP18hY5dGr3xTj6GSBamoRlayqV8TwHECz0N4gxlpvQbE72y0cun4ZgrHXS4Th7MVxoNLxb6DYLx6cJO3Udca9yePijnOQLWUhMa9wVOyIWp8hbJd5K59zF1zRbsegboneSzRYnIrfyx8WfS3YCjqRfQIDAQABAoIBAQC5CQAdcqZ9vLpJNilBCJxJLCFmm+HAAREHD8MErg9A5UK1P4S1wJp/0qieGPi68wXBOTgY2xKSwMycgb04/+NyZidVRu388takOW/+KNBg8pMxdZ6/05GqnI0kivSbR3CXpYuz8hekwhpo9+fWmKjApsHL47ItK6WaeKmPbAFsq1YJGzfp/DXg7LIvh9GA3C1LWWGV7SuCGOyX/2Moi8xRa7qBtH4hDo/0NRhTx7zjYjlBgNEr330pJUopc3+AtHE40R+xMr2zkGvq9RsCZxYxD2VWbLwQW0yNjWmQ2OTuMgJJvk2+N73QLHcB+tea82ZTszsNzRS9DLtc6qbsKEPZAoGBAO78U3vEuRyY56f/1hpo0xuCDwOkWGzgBQWkjJl6dlyVz/zKkhXBHpEYImyt8XRN0W3iGZYpZ2hCFJGTcDp32R6UiEyGLz0Uc8R/tva/TiRVW1FdNczzSHcB24b9OMK4vE9JLs8mA8Rp8YBgtLr5DDuMfYt/a/rZJbg/HIfIN98nAoGBAO2OInCX93t2I6zzRPIqKtI6q6FYNp64VIQjvw9Y8l0x3IdJZRP9H5C8ZhCeYPsgEqTXcXa4j5hL4rQzoUtxfxflBUUH60bcnd4LGaTCMYLS14G011E3GZlIP0sJi5OjEhy8fq3zt6jVzS9V/lPHB8i+w1D7CbPrMpW7B3k32vC7AoGAX/HvdkYhZyjAAEOG6m1hK68IZhbp5TP+8CgCxm9S65K9wKh3A8LXibrdvzIKOP4w8WOPkCipOkMlTNibeu24vj01hztr5aK7Y40+oEtnjNCz67N3MQQO+LBHOSeaTRqrh01DPKjvZECAU2D/zfzEe3fIw2Nxr3DUYub7hkvMmosCgYAzxbVVypjiLGYsDDyrdmsstCKxoDMPNmcdAVljc+QmUXaZeXJw/8qAVb78wjeqo1vM1zNgR2rsKyW2VkZB1fN39q7GU6qAIBa7zLmDAduegmr7VrlSduq6UFeS9/qWa4TIBICrUqFlR2tXdKtgANF+e6y/mmaL8qdsoH1JetXZfwKBgQC1vscRpdAXivjOOZAh+mzJWzS4BUl4CTJLYYIuOEXikmN5g0EdV2fhUEdkewmyKnXHsd0x83167bYgpTDNs71jUxDHy5NXlg2qIjLkf09X9wr19gBzDApfWzfh3vUqttyMZuQMLVNepGCWM2vjlY9KGl5OvZqY6d+7yO0mLV9GmQ==-----END RSA PRIVATE KEY-----"
    And The setting "security-wantAssertionsSigned" is set to "1"
    When I send a GET request to "http://localhost/index.php/login"
    Then I should be redirected to "https://localhost:4443/idp/profile/SAML2/Redirect/SSO"
    And I send a POST request to "https://localhost:4443/idp/profile/SAML2/Redirect/SSO?execution=e1s1" with the following data
      |j_username|j_password|_eventId_proceed|
      |student1  |password  |                |
    And The response should be a SAML redirect page that gets submitted
    And I should be redirected to "http://localhost/index.php/apps/files/"
    And I should be logged-in to Nextcloud as user "student1"