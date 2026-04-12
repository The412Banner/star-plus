.class Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;
.super Ljava/lang/Object;
.source "SupportedGroupsExtension.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NamedParameterSpec"
.end annotation


# static fields
.field public static final X25519:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;

.field public static final X448:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1119
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;

    const-string v1, "X25519"

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;->X25519:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;

    .line 1124
    new-instance v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;

    const-string v1, "X448"

    invoke-direct {v0, v1}, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;->X448:Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "stdName"    # Ljava/lang/String;

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    iput-object p1, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;->name:Ljava/lang/String;

    .line 1142
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1149
    iget-object v0, p0, Lorg/openjsse/sun/security/ssl/SupportedGroupsExtension$NamedParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
