# Google Login :-

> To use Google login you have to use class GoogleLoginController. 

Firstly register your app with Google and get a configuration file. Add this configuration file(`GoogleService-Info.plist`) into your project and follow the following steps

## Pods :-

``` ruby
pod 'GoogleSignIn'
```

## Steps :- 

#### Add followig code to your AppDelegate didFinishLaunchingWithOptions function :-

``` swift
GoogleLoginController.shared.configure(withClientId: K_GOOGLE_CLIENT_ID)  //you can find your client id in the configuration file(GoogleService-Info.plist) downloaded
```


#### Add following function to your AppDelegate :-

``` swift
func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {

    return GoogleLoginController.shared.handleUrl(url, options: options)

}
```

#### Now go to Target -> Info -> Url types in your project and click the + button then add your `reversed client id` mentioned in configuration file(GoogleService-Info.plist) to `URL Schemes`


#### Now call login function of GoogleLoginController's shared instance :-

``` swift
GoogleLoginController.shared.login(success: { (model :  GoogleUser) in

    self.nameLabel.text = model.name
    self.emailLabel.text = model.email
    self.imageUrlLabel.text = model.image?.absoluteString
})
{ (err : Error) in
    print(err.localizedDescription)
}

```
