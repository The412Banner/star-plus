.class interface abstract Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;
.super Ljava/lang/Object;
.source "SSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ReadCipherGenerator"
.end annotation


# virtual methods
.method public abstract createCipher(Lorg/openjsse/sun/security/ssl/SSLCipher;Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
