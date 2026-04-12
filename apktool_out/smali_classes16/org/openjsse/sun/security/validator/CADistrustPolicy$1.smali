.class final enum Lorg/openjsse/sun/security/validator/CADistrustPolicy$1;
.super Lorg/openjsse/sun/security/validator/CADistrustPolicy;
.source "CADistrustPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/validator/CADistrustPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjsse/sun/security/validator/CADistrustPolicy;-><init>(Ljava/lang/String;ILorg/openjsse/sun/security/validator/CADistrustPolicy$1;)V

    return-void
.end method


# virtual methods
.method checkDistrust(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/validator/ValidatorException;
        }
    .end annotation

    .line 52
    const-string v0, "tls server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    invoke-static {p2}, Lorg/openjsse/sun/security/validator/SymantecTLSPolicy;->checkDistrust([Ljava/security/cert/X509Certificate;)V

    .line 56
    return-void
.end method
