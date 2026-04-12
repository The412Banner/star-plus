.class final Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator;
.super Ljava/lang/Object;
.source "SSLCipher.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/SSLCipher$ReadCipherGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "T12CC20P1305ReadCipherGenerator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SSLCipher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SSLCipher$1;

    .line 2127
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public createCipher(Lorg/openjsse/sun/security/ssl/SSLCipher;Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)Lorg/openjsse/sun/security/ssl/SSLCipher$SSLReadCipher;
    .locals 9
    .param p1, "sslCipher"    # Lorg/openjsse/sun/security/ssl/SSLCipher;
    .param p2, "authenticator"    # Lorg/openjsse/sun/security/ssl/Authenticator;
    .param p3, "protocolVersion"    # Lorg/openjsse/sun/security/ssl/ProtocolVersion;
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p5, "key"    # Ljava/security/Key;
    .param p6, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p7, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2135
    new-instance v8, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/openjsse/sun/security/ssl/SSLCipher$T12CC20P1305ReadCipherGenerator$CC20P1305ReadCipher;-><init>(Lorg/openjsse/sun/security/ssl/Authenticator;Lorg/openjsse/sun/security/ssl/ProtocolVersion;Lorg/openjsse/sun/security/ssl/SSLCipher;Ljava/lang/String;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-object v8
.end method
