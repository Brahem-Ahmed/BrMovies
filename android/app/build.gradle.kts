plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.br_movies"
    compileSdk = flutter.compileSdkVersion.toInt() // Note: .toInt() is required in Kotlin DSL

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.br_movies"
        minSdk = flutter.minSdkVersion.toInt() // Note: .toInt() is required
        targetSdk = flutter.targetSdkVersion.toInt() // Note: .toInt() is required
        versionCode = flutter.versionCode.toInt() // Note: .toInt() is required
        versionName = flutter.versionName

    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}