.class final Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;
.super Ljava/lang/Object;
.source "PredefinedDHParameterSpecs.java"


# static fields
.field private static final PRIME_CERTAINTY:I = 0x78

.field private static final PROPERTY_NAME:Ljava/lang/String; = "jdk.tls.server.defaultDHEParameters"

.field static final definedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/spec/DHParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final ffdheParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/spec/DHParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final ffdhePrimes:[Ljava/math/BigInteger;

.field private static final p1024:Ljava/math/BigInteger;

.field private static final p1536:Ljava/math/BigInteger;

.field private static final p2048:Ljava/math/BigInteger;

.field private static final p3072:Ljava/math/BigInteger;

.field private static final p4096:Ljava/math/BigInteger;

.field private static final p512:Ljava/math/BigInteger;

.field private static final p6144:Ljava/math/BigInteger;

.field private static final p768:Ljava/math/BigInteger;

.field private static final p8192:Ljava/math/BigInteger;

.field private static final paramsPattern:Ljava/util/regex/Pattern;

.field private static final spacesPattern:Ljava/util/regex/Pattern;

.field private static final supportedPrimes:[Ljava/math/BigInteger;

.field private static final syntaxPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 45
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "D87780E15FF50B4ABBE89870188B049406B5BEA98AB23A0241D88EA75B7755E669C08093D3F0CA7FC3A5A25CF067DCB9A43DD89D1D90921C6328884461E0B6D3"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p512:Ljava/math/BigInteger;

    .line 49
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A63A3620FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p768:Ljava/math/BigInteger;

    .line 55
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE65381FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p1024:Ljava/math/BigInteger;

    .line 62
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA237327FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p1536:Ljava/math/BigInteger;

    .line 71
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B423861285C97FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p2048:Ljava/math/BigInteger;

    .line 83
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B4238611FCFDCDE355B3B6519035BBC34F4DEF99C023861B46FC9D6E6C9077AD91D2691F7F7EE598CB0FAC186D91CAEFE130985139270B4130C93BC437944F4FD4452E2D74DD364F2E21E71F54BFF5CAE82AB9C9DF69EE86D2BC522363A0DABC521979B0DEADA1DBF9A42D5C4484E0ABCD06BFA53DDEF3C1B20EE3FD59D7C25E41D2B66C62E37FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p3072:Ljava/math/BigInteger;

    .line 100
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B4238611FCFDCDE355B3B6519035BBC34F4DEF99C023861B46FC9D6E6C9077AD91D2691F7F7EE598CB0FAC186D91CAEFE130985139270B4130C93BC437944F4FD4452E2D74DD364F2E21E71F54BFF5CAE82AB9C9DF69EE86D2BC522363A0DABC521979B0DEADA1DBF9A42D5C4484E0ABCD06BFA53DDEF3C1B20EE3FD59D7C25E41D2B669E1EF16E6F52C3164DF4FB7930E9E4E58857B6AC7D5F42D69F6D187763CF1D5503400487F55BA57E31CC7A7135C886EFB4318AED6A1E012D9E6832A907600A918130C46DC778F971AD0038092999A333CB8B7A1A1DB93D7140003C2A4ECEA9F98D0ACC0A8291CDCEC97DCF8EC9B55A7F88A46B4DB5A851F44182E1C68A007E5E655F6AFFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p4096:Ljava/math/BigInteger;

    .line 123
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B4238611FCFDCDE355B3B6519035BBC34F4DEF99C023861B46FC9D6E6C9077AD91D2691F7F7EE598CB0FAC186D91CAEFE130985139270B4130C93BC437944F4FD4452E2D74DD364F2E21E71F54BFF5CAE82AB9C9DF69EE86D2BC522363A0DABC521979B0DEADA1DBF9A42D5C4484E0ABCD06BFA53DDEF3C1B20EE3FD59D7C25E41D2B669E1EF16E6F52C3164DF4FB7930E9E4E58857B6AC7D5F42D69F6D187763CF1D5503400487F55BA57E31CC7A7135C886EFB4318AED6A1E012D9E6832A907600A918130C46DC778F971AD0038092999A333CB8B7A1A1DB93D7140003C2A4ECEA9F98D0ACC0A8291CDCEC97DCF8EC9B55A7F88A46B4DB5A851F44182E1C68A007E5E0DD9020BFD64B645036C7A4E677D2C38532A3A23BA4442CAF53EA63BB454329B7624C8917BDD64B1C0FD4CB38E8C334C701C3ACDAD0657FCCFEC719B1F5C3E4E46041F388147FB4CFDB477A52471F7A9A96910B855322EDB6340D8A00EF092350511E30ABEC1FFF9E3A26E7FB29F8C183023C3587E38DA0077D9B4763E4E4B94B2BBC194C6651E77CAF992EEAAC0232A281BF6B3A739C1226116820AE8DB5847A67CBEF9C9091B462D538CD72B03746AE77F5E62292C311562A846505DC82DB854338AE49F5235C95B91178CCF2DD5CACEF403EC9D1810C6272B045B3B71F9DC6B80D63FDD4A8E9ADB1E6962A69526D43161C1A41D570D7938DAD4A40E329CD0E40E65FFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p6144:Ljava/math/BigInteger;

    .line 156
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFADF85458A2BB4A9AAFDC5620273D3CF1D8B9C583CE2D3695A9E13641146433FBCC939DCE249B3EF97D2FE363630C75D8F681B202AEC4617AD3DF1ED5D5FD65612433F51F5F066ED0856365553DED1AF3B557135E7F57C935984F0C70E0E68B77E2A689DAF3EFE8721DF158A136ADE73530ACCA4F483A797ABC0AB182B324FB61D108A94BB2C8E3FBB96ADAB760D7F4681D4F42A3DE394DF4AE56EDE76372BB190B07A7C8EE0A6D709E02FCE1CDF7E2ECC03404CD28342F619172FE9CE98583FF8E4F1232EEF28183C3FE3B1B4C6FAD733BB5FCBC2EC22005C58EF1837D1683B2C6F34A26C1B2EFFA886B4238611FCFDCDE355B3B6519035BBC34F4DEF99C023861B46FC9D6E6C9077AD91D2691F7F7EE598CB0FAC186D91CAEFE130985139270B4130C93BC437944F4FD4452E2D74DD364F2E21E71F54BFF5CAE82AB9C9DF69EE86D2BC522363A0DABC521979B0DEADA1DBF9A42D5C4484E0ABCD06BFA53DDEF3C1B20EE3FD59D7C25E41D2B669E1EF16E6F52C3164DF4FB7930E9E4E58857B6AC7D5F42D69F6D187763CF1D5503400487F55BA57E31CC7A7135C886EFB4318AED6A1E012D9E6832A907600A918130C46DC778F971AD0038092999A333CB8B7A1A1DB93D7140003C2A4ECEA9F98D0ACC0A8291CDCEC97DCF8EC9B55A7F88A46B4DB5A851F44182E1C68A007E5E0DD9020BFD64B645036C7A4E677D2C38532A3A23BA4442CAF53EA63BB454329B7624C8917BDD64B1C0FD4CB38E8C334C701C3ACDAD0657FCCFEC719B1F5C3E4E46041F388147FB4CFDB477A52471F7A9A96910B855322EDB6340D8A00EF092350511E30ABEC1FFF9E3A26E7FB29F8C183023C3587E38DA0077D9B4763E4E4B94B2BBC194C6651E77CAF992EEAAC0232A281BF6B3A739C1226116820AE8DB5847A67CBEF9C9091B462D538CD72B03746AE77F5E62292C311562A846505DC82DB854338AE49F5235C95B91178CCF2DD5CACEF403EC9D1810C6272B045B3B71F9DC6B80D63FDD4A8E9ADB1E6962A69526D43161C1A41D570D7938DAD4A40E329CCFF46AAA36AD004CF600C8381E425A31D951AE64FDB23FCEC9509D43687FEB69EDD1CC5E0B8CC3BDF64B10EF86B63142A3AB8829555B2F747C932665CB2C0F1CC01BD70229388839D2AF05E454504AC78B7582822846C0BA35C35F5C59160CC046FD8251541FC68C9C86B022BB7099876A460E7451A8A93109703FEE1C217E6C3826E52C51AA691E0E423CFC99E9E31650C1217B624816CDAD9A95F9D5B8019488D9C0A0A1FE3075A577E23183F81D4A3F2FA4571EFC8CE0BA8A4FE8B6855DFE72B0A66EDED2FBABFBE58A30FAFABE1C5D71A87E2F741EF8C1FE86FEA6BBFDE530677F0D97D11D49F7A8443D0822E506A9F4614E011E2A94838FF88CD68C8BB7C5C6424CFFFFFFFFFFFFFFFF"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p8192:Ljava/math/BigInteger;

    .line 201
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/math/BigInteger;

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p512:Ljava/math/BigInteger;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p768:Ljava/math/BigInteger;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p1024:Ljava/math/BigInteger;

    const/4 v5, 0x2

    aput-object v1, v0, v5

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p1536:Ljava/math/BigInteger;

    const/4 v6, 0x3

    aput-object v1, v0, v6

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p2048:Ljava/math/BigInteger;

    const/4 v7, 0x4

    aput-object v1, v0, v7

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p3072:Ljava/math/BigInteger;

    const/4 v8, 0x5

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v9, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p4096:Ljava/math/BigInteger;

    aput-object v9, v0, v1

    const/4 v1, 0x7

    sget-object v9, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p6144:Ljava/math/BigInteger;

    aput-object v9, v0, v1

    const/16 v1, 0x8

    sget-object v9, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p8192:Ljava/math/BigInteger;

    aput-object v9, v0, v1

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->supportedPrimes:[Ljava/math/BigInteger;

    .line 204
    new-array v0, v8, [Ljava/math/BigInteger;

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p2048:Ljava/math/BigInteger;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p3072:Ljava/math/BigInteger;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p4096:Ljava/math/BigInteger;

    aput-object v1, v0, v5

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p6144:Ljava/math/BigInteger;

    aput-object v1, v0, v6

    sget-object v1, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->p8192:Ljava/math/BigInteger;

    aput-object v1, v0, v7

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdhePrimes:[Ljava/math/BigInteger;

    .line 216
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->spacesPattern:Ljava/util/regex/Pattern;

    .line 218
    const-string v0, "(\\{[0-9A-Fa-f]+,[0-9A-Fa-f]+\\})(,\\{[0-9A-Fa-f]+,[0-9A-Fa-f]+\\})*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->syntaxPattern:Ljava/util/regex/Pattern;

    .line 222
    const-string v0, "\\{([0-9A-Fa-f]+),([0-9A-Fa-f]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->paramsPattern:Ljava/util/regex/Pattern;

    .line 232
    new-instance v0, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs$1;

    invoke-direct {v0}, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, "property":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x22

    if-ne v1, v6, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_1
    const-string v1, "sslctx"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 250
    sget-object v6, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->spacesPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 251
    .local v6, "spacesMatcher":Ljava/util/regex/Matcher;
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    sget-boolean v7, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v7, :cond_2

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The Security Property jdk.tls.server.defaultDHEParameters: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    .end local v6    # "spacesMatcher":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v6, "defaultParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavax/crypto/spec/DHParameterSpec;>;"
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 262
    sget-object v7, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->syntaxPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 263
    .local v7, "syntaxMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 264
    sget-object v8, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->paramsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 265
    .local v8, "paramsFinder":Ljava/util/regex/Matcher;
    :cond_3
    :goto_0
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 266
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "primeModulus":Ljava/lang/String;
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v9, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 268
    .local v10, "p":Ljava/math/BigInteger;
    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 269
    sget-boolean v11, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v11, :cond_3

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 270
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Prime modulus p in Security Property, jdk.tls.server.defaultDHEParameters, is not a prime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, "baseGenerator":Ljava/lang/String;
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v11, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 282
    .local v12, "g":Ljava/math/BigInteger;
    new-instance v13, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v13, v10, v12}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 283
    .local v13, "spec":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    .line 284
    .local v14, "primeLen":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v9    # "primeModulus":Ljava/lang/String;
    .end local v10    # "p":Ljava/math/BigInteger;
    .end local v11    # "baseGenerator":Ljava/lang/String;
    .end local v12    # "g":Ljava/math/BigInteger;
    .end local v13    # "spec":Ljavax/crypto/spec/DHParameterSpec;
    .end local v14    # "primeLen":I
    goto :goto_0

    .line 265
    .end local v8    # "paramsFinder":Ljava/util/regex/Matcher;
    :cond_5
    goto :goto_1

    .line 286
    :cond_6
    sget-boolean v2, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn:Z

    if-eqz v2, :cond_7

    invoke-static {v1}, Lorg/openjsse/sun/security/ssl/SSLLogger;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 287
    const-string v1, "Invalid Security Property, jdk.tls.server.defaultDHEParameters, definition"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/openjsse/sun/security/ssl/SSLLogger;->fine(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 286
    :cond_7
    :goto_1
    nop

    .line 292
    .end local v7    # "syntaxMatcher":Ljava/util/regex/Matcher;
    :cond_8
    :goto_2
    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 294
    .local v1, "TWO":Ljava/math/BigInteger;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v2, "tempFFDHEs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavax/crypto/spec/DHParameterSpec;>;"
    sget-object v4, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdhePrimes:[Ljava/math/BigInteger;

    array-length v5, v4

    move v7, v3

    :goto_3
    if-ge v7, v5, :cond_9

    aget-object v8, v4, v7

    .line 296
    .local v8, "p":Ljava/math/BigInteger;
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    .line 297
    .local v9, "primeLen":I
    new-instance v10, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v10, v8, v1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 298
    .local v10, "dhps":Ljavax/crypto/spec/DHParameterSpec;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11, v10}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .end local v8    # "p":Ljava/math/BigInteger;
    .end local v9    # "primeLen":I
    .end local v10    # "dhps":Ljavax/crypto/spec/DHParameterSpec;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 302
    :cond_9
    sget-object v4, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->supportedPrimes:[Ljava/math/BigInteger;

    array-length v5, v4

    :goto_4
    if-ge v3, v5, :cond_b

    aget-object v7, v4, v3

    .line 303
    .local v7, "p":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    .line 304
    .local v8, "primeLen":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    .line 305
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v10, v7, v1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v7    # "p":Ljava/math/BigInteger;
    .end local v8    # "primeLen":I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 310
    :cond_b
    nop

    .line 311
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->ffdheParams:Ljava/util/Map;

    .line 312
    nop

    .line 313
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lorg/openjsse/sun/security/ssl/PredefinedDHParameterSpecs;->definedParams:Ljava/util/Map;

    .line 314
    .end local v0    # "property":Ljava/lang/String;
    .end local v1    # "TWO":Ljava/math/BigInteger;
    .end local v2    # "tempFFDHEs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavax/crypto/spec/DHParameterSpec;>;"
    .end local v6    # "defaultParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljavax/crypto/spec/DHParameterSpec;>;"
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
