.class public Lorg/bouncycastle/crypto/engines/DSTU7624Engine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final ROUNDS_128:I = 0xa

.field private static final ROUNDS_256:I = 0xe

.field private static final ROUNDS_512:I = 0x12

.field private static final S0:[B

.field private static final S1:[B

.field private static final S2:[B

.field private static final S3:[B

.field private static final T0:[B

.field private static final T1:[B

.field private static final T2:[B

.field private static final T3:[B


# instance fields
.field private forEncryption:Z

.field private internalState:[J

.field private roundKeys:[[J

.field private roundsAmount:I

.field private wordsInBlock:I

.field private wordsInKey:I

.field private workingKey:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x58t
        0x43t
        0x5ft
        0x6t
        0x6bt
        0x75t
        0x6ct
        0x59t
        0x71t
        -0x21t
        -0x79t
        -0x6bt
        0x17t
        -0x10t
        -0x28t
        0x9t
        0x6dt
        -0xdt
        0x1dt
        -0x35t
        -0x37t
        0x4dt
        0x2ct
        -0x51t
        0x79t
        -0x20t
        -0x69t
        -0x3t
        0x6ft
        0x4bt
        0x45t
        0x39t
        0x3et
        -0x23t
        -0x5dt
        0x4ft
        -0x4ct
        -0x4at
        -0x66t
        0xet
        0x1ft
        -0x41t
        0x15t
        -0x1ft
        0x49t
        -0x2et
        -0x6dt
        -0x3at
        -0x6et
        0x72t
        -0x62t
        0x61t
        -0x2ft
        0x63t
        -0x6t
        -0x12t
        -0xct
        0x19t
        -0x2bt
        -0x53t
        0x58t
        -0x5ct
        -0x45t
        -0x5ft
        -0x24t
        -0xet
        -0x7dt
        0x37t
        0x42t
        -0x1ct
        0x7at
        0x32t
        -0x64t
        -0x34t
        -0x55t
        0x4at
        -0x71t
        0x6et
        0x4t
        0x27t
        0x2et
        -0x19t
        -0x1et
        0x5at
        -0x6at
        0x16t
        0x23t
        0x2bt
        -0x3et
        0x65t
        0x66t
        0xft
        -0x44t
        -0x57t
        0x47t
        0x41t
        0x34t
        0x48t
        -0x4t
        -0x49t
        0x6at
        -0x78t
        -0x5bt
        0x53t
        -0x7at
        -0x7t
        0x5bt
        -0x25t
        0x38t
        0x7bt
        -0x3dt
        0x1et
        0x22t
        0x33t
        0x24t
        0x28t
        0x36t
        -0x39t
        -0x4et
        0x3bt
        -0x72t
        0x77t
        -0x46t
        -0xbt
        0x14t
        -0x61t
        0x8t
        0x55t
        -0x65t
        0x4ct
        -0x2t
        0x60t
        0x5ct
        -0x26t
        0x18t
        0x46t
        -0x33t
        0x7dt
        0x21t
        -0x50t
        0x3ft
        0x1bt
        -0x77t
        -0x1t
        -0x15t
        -0x7ct
        0x69t
        0x3at
        -0x63t
        -0x29t
        -0x2dt
        0x70t
        0x67t
        0x40t
        -0x4bt
        -0x22t
        0x5dt
        0x30t
        -0x6ft
        -0x4ft
        0x78t
        0x11t
        0x1t
        -0x1bt
        0x0t
        0x68t
        -0x68t
        -0x60t
        -0x3bt
        0x2t
        -0x5at
        0x74t
        0x2dt
        0xbt
        -0x5et
        0x76t
        -0x4dt
        -0x42t
        -0x32t
        -0x43t
        -0x52t
        -0x17t
        -0x76t
        0x31t
        0x1ct
        -0x14t
        -0xft
        -0x67t
        -0x6ct
        -0x56t
        -0xat
        0x26t
        0x2ft
        -0x11t
        -0x18t
        -0x74t
        0x35t
        0x3t
        -0x2ct
        0x7ft
        -0x5t
        0x5t
        -0x3ft
        0x5et
        -0x70t
        0x20t
        0x3dt
        -0x7et
        -0x9t
        -0x16t
        0xat
        0xdt
        0x7et
        -0x8t
        0x50t
        0x1at
        -0x3ct
        0x7t
        0x57t
        -0x48t
        0x3ct
        0x62t
        -0x1dt
        -0x38t
        -0x54t
        0x52t
        0x64t
        0x10t
        -0x30t
        -0x27t
        0x13t
        0xct
        0x12t
        0x29t
        0x51t
        -0x47t
        -0x31t
        -0x2at
        0x73t
        -0x73t
        -0x7ft
        0x54t
        -0x40t
        -0x13t
        0x4et
        0x44t
        -0x59t
        0x2at
        -0x7bt
        0x25t
        -0x1at
        -0x36t
        0x7ct
        -0x75t
        0x56t
        -0x80t
    .end array-data

    :array_1
    .array-data 1
        -0x32t
        -0x45t
        -0x15t
        -0x6et
        -0x16t
        -0x35t
        0x13t
        -0x3ft
        -0x17t
        0x3at
        -0x2at
        -0x4et
        -0x2et
        -0x70t
        0x17t
        -0x8t
        0x42t
        0x15t
        0x56t
        -0x4ct
        0x65t
        0x1ct
        -0x78t
        0x43t
        -0x3bt
        0x5ct
        0x36t
        -0x46t
        -0xbt
        0x57t
        0x67t
        -0x73t
        0x31t
        -0xat
        0x64t
        0x58t
        -0x62t
        -0xct
        0x22t
        -0x56t
        0x75t
        0xft
        0x2t
        -0x4ft
        -0x21t
        0x6dt
        0x73t
        0x4dt
        0x7ct
        0x26t
        0x2et
        -0x9t
        0x8t
        0x5dt
        0x44t
        0x3et
        -0x61t
        0x14t
        -0x38t
        -0x52t
        0x54t
        0x10t
        -0x28t
        -0x44t
        0x1at
        0x6bt
        0x69t
        -0xdt
        -0x43t
        0x33t
        -0x55t
        -0x6t
        -0x2ft
        -0x65t
        0x68t
        0x4et
        0x16t
        -0x6bt
        -0x6ft
        -0x12t
        0x4ct
        0x63t
        -0x72t
        0x5bt
        -0x34t
        0x3ct
        0x19t
        -0x5ft
        -0x7ft
        0x49t
        0x7bt
        -0x27t
        0x6ft
        0x37t
        0x60t
        -0x36t
        -0x19t
        0x2bt
        0x48t
        -0x3t
        -0x6at
        0x45t
        -0x4t
        0x41t
        0x12t
        0xdt
        0x79t
        -0x1bt
        -0x77t
        -0x74t
        -0x1dt
        0x20t
        0x30t
        -0x24t
        -0x49t
        0x6ct
        0x4at
        -0x4bt
        0x3ft
        -0x69t
        -0x2ct
        0x62t
        0x2dt
        0x6t
        -0x5ct
        -0x5bt
        -0x7dt
        0x5ft
        0x2at
        -0x26t
        -0x37t
        0x0t
        0x7et
        -0x5et
        0x55t
        -0x41t
        0x11t
        -0x2bt
        -0x64t
        -0x31t
        0xet
        0xat
        0x3dt
        0x51t
        0x7dt
        -0x6dt
        0x1bt
        -0x2t
        -0x3ct
        0x47t
        0x9t
        -0x7at
        0xbt
        -0x71t
        -0x63t
        0x6at
        0x7t
        -0x47t
        -0x50t
        -0x68t
        0x18t
        0x32t
        0x71t
        0x4bt
        -0x11t
        0x3bt
        0x70t
        -0x60t
        -0x1ct
        0x40t
        -0x1t
        -0x3dt
        -0x57t
        -0x1at
        0x78t
        -0x7t
        -0x75t
        0x46t
        -0x80t
        0x1et
        0x38t
        -0x1ft
        -0x48t
        -0x58t
        -0x20t
        0xct
        0x23t
        0x76t
        0x1dt
        0x25t
        0x24t
        0x5t
        -0xft
        0x6et
        -0x6ct
        0x28t
        -0x66t
        -0x7ct
        -0x18t
        -0x5dt
        0x4ft
        0x77t
        -0x2dt
        -0x7bt
        -0x1et
        0x52t
        -0xet
        -0x7et
        0x50t
        0x7at
        0x2ft
        0x74t
        0x53t
        -0x4dt
        0x61t
        -0x51t
        0x39t
        0x35t
        -0x22t
        -0x33t
        0x1ft
        -0x67t
        -0x54t
        -0x53t
        0x72t
        0x2ct
        -0x23t
        -0x30t
        -0x79t
        -0x42t
        0x5et
        -0x5at
        -0x14t
        0x4t
        -0x3at
        0x3t
        0x34t
        -0x5t
        -0x25t
        0x59t
        -0x4at
        -0x3et
        0x1t
        -0x10t
        0x5at
        -0x13t
        -0x59t
        0x66t
        0x21t
        0x7ft
        -0x76t
        0x27t
        -0x39t
        -0x40t
        0x29t
        -0x29t
    .end array-data

    :array_2
    .array-data 1
        -0x6dt
        -0x27t
        -0x66t
        -0x4bt
        -0x68t
        0x22t
        0x45t
        -0x4t
        -0x46t
        0x6at
        -0x21t
        0x2t
        -0x61t
        -0x24t
        0x51t
        0x59t
        0x4at
        0x17t
        0x2bt
        -0x3et
        -0x6ct
        -0xct
        -0x45t
        -0x5dt
        0x62t
        -0x1ct
        0x71t
        -0x2ct
        -0x33t
        0x70t
        0x16t
        -0x1ft
        0x49t
        0x3ct
        -0x40t
        -0x28t
        0x5ct
        -0x65t
        -0x53t
        -0x7bt
        0x53t
        -0x5ft
        0x7at
        -0x38t
        0x2dt
        -0x20t
        -0x2ft
        0x72t
        -0x5at
        0x2ct
        -0x3ct
        -0x1dt
        0x76t
        0x78t
        -0x49t
        -0x4ct
        0x9t
        0x3bt
        0xet
        0x41t
        0x4ct
        -0x22t
        -0x4et
        -0x70t
        0x25t
        -0x5bt
        -0x29t
        0x3t
        0x11t
        0x0t
        -0x3dt
        0x2et
        -0x6et
        -0x11t
        0x4et
        0x12t
        -0x63t
        0x7dt
        -0x35t
        0x35t
        0x10t
        -0x2bt
        0x4ft
        -0x62t
        0x4dt
        -0x57t
        0x55t
        -0x3at
        -0x30t
        0x7bt
        0x18t
        -0x69t
        -0x2dt
        0x36t
        -0x1at
        0x48t
        0x56t
        -0x7ft
        -0x71t
        0x77t
        -0x34t
        -0x64t
        -0x47t
        -0x1et
        -0x54t
        -0x48t
        0x2ft
        0x15t
        -0x5ct
        0x7ct
        -0x26t
        0x38t
        0x1et
        0xbt
        0x5t
        -0x2at
        0x14t
        0x6et
        0x6ct
        0x7et
        0x66t
        -0x3t
        -0x4ft
        -0x1bt
        0x60t
        -0x51t
        0x5et
        0x33t
        -0x79t
        -0x37t
        -0x10t
        0x5dt
        0x6dt
        0x3ft
        -0x78t
        -0x73t
        -0x39t
        -0x9t
        0x1dt
        -0x17t
        -0x14t
        -0x13t
        -0x80t
        0x29t
        0x27t
        -0x31t
        -0x67t
        -0x58t
        0x50t
        0xft
        0x37t
        0x24t
        0x28t
        0x30t
        -0x6bt
        -0x2et
        0x3et
        0x5bt
        0x40t
        -0x7dt
        -0x4dt
        0x69t
        0x57t
        0x1ft
        0x7t
        0x1ct
        -0x76t
        -0x44t
        0x20t
        -0x15t
        -0x32t
        -0x72t
        -0x55t
        -0x12t
        0x31t
        -0x5et
        0x73t
        -0x7t
        -0x36t
        0x3at
        0x1at
        -0x5t
        0xdt
        -0x3ft
        -0x2t
        -0x6t
        -0xet
        0x6ft
        -0x43t
        -0x6at
        -0x23t
        0x43t
        0x52t
        -0x4at
        0x8t
        -0xdt
        -0x52t
        -0x42t
        0x19t
        -0x77t
        0x32t
        0x26t
        -0x50t
        -0x16t
        0x4bt
        0x64t
        -0x7ct
        -0x7et
        0x6bt
        -0xbt
        0x79t
        -0x41t
        0x1t
        0x5ft
        0x75t
        0x63t
        0x1bt
        0x23t
        0x3dt
        0x68t
        0x2at
        0x65t
        -0x18t
        -0x6ft
        -0xat
        -0x1t
        0x13t
        0x58t
        -0xft
        0x47t
        0xat
        0x7ft
        -0x3bt
        -0x59t
        -0x19t
        0x61t
        0x5at
        0x6t
        0x46t
        0x44t
        0x42t
        0x4t
        -0x60t
        -0x25t
        0x39t
        -0x7at
        0x54t
        -0x56t
        -0x74t
        0x34t
        0x21t
        -0x75t
        -0x8t
        0xct
        0x74t
        0x67t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        -0x73t
        -0x36t
        0x4dt
        0x73t
        0x4bt
        0x4et
        0x2at
        -0x2ct
        0x52t
        0x26t
        -0x4dt
        0x54t
        0x1et
        0x19t
        0x1ft
        0x22t
        0x3t
        0x46t
        0x3dt
        0x2dt
        0x4at
        0x53t
        -0x7dt
        0x13t
        -0x76t
        -0x49t
        -0x2bt
        0x25t
        0x79t
        -0xbt
        -0x43t
        0x58t
        0x2ft
        0xdt
        0x2t
        -0x13t
        0x51t
        -0x62t
        0x11t
        -0xet
        0x3et
        0x55t
        0x5et
        -0x2ft
        0x16t
        0x3ct
        0x66t
        0x70t
        0x5dt
        -0xdt
        0x45t
        0x40t
        -0x34t
        -0x18t
        -0x6ct
        0x56t
        0x8t
        -0x32t
        0x1at
        0x3at
        -0x2et
        -0x1ft
        -0x21t
        -0x4bt
        0x38t
        0x6et
        0xet
        -0x1bt
        -0xct
        -0x7t
        -0x7at
        -0x17t
        0x4ft
        -0x2at
        -0x7bt
        0x23t
        -0x31t
        0x32t
        -0x67t
        0x31t
        0x14t
        -0x52t
        -0x12t
        -0x38t
        0x48t
        -0x2dt
        0x30t
        -0x5ft
        -0x6et
        0x41t
        -0x4ft
        0x18t
        -0x3ct
        0x2ct
        0x71t
        0x72t
        0x44t
        0x15t
        -0x3t
        0x37t
        -0x42t
        0x5ft
        -0x56t
        -0x65t
        -0x78t
        -0x28t
        -0x55t
        -0x77t
        -0x64t
        -0x6t
        0x60t
        -0x16t
        -0x44t
        0x62t
        0xct
        0x24t
        -0x5at
        -0x58t
        -0x14t
        0x67t
        0x20t
        -0x25t
        0x7ct
        0x28t
        -0x23t
        -0x54t
        0x5bt
        0x34t
        0x7et
        0x10t
        -0xft
        0x7bt
        -0x71t
        0x63t
        -0x60t
        0x5t
        -0x66t
        0x43t
        0x77t
        0x21t
        -0x41t
        0x27t
        0x9t
        -0x3dt
        -0x61t
        -0x4at
        -0x29t
        0x29t
        -0x3et
        -0x15t
        -0x40t
        -0x5ct
        -0x75t
        -0x74t
        0x1dt
        -0x5t
        -0x1t
        -0x3ft
        -0x4et
        -0x69t
        0x2et
        -0x8t
        0x65t
        -0xat
        0x75t
        0x7t
        0x4t
        0x49t
        0x33t
        -0x1ct
        -0x27t
        -0x47t
        -0x30t
        0x42t
        -0x39t
        0x6ct
        -0x70t
        0x0t
        -0x72t
        0x6ft
        0x50t
        0x1t
        -0x3bt
        -0x26t
        0x47t
        0x3ft
        -0x33t
        0x69t
        -0x5et
        -0x1et
        0x7at
        -0x59t
        -0x3at
        -0x6dt
        0xft
        0xat
        0x6t
        -0x1at
        0x2bt
        -0x6at
        -0x5dt
        0x1ct
        -0x51t
        0x6at
        0x12t
        -0x7ct
        0x39t
        -0x19t
        -0x50t
        -0x7et
        -0x9t
        -0x2t
        -0x63t
        -0x79t
        0x5ct
        -0x7ft
        0x35t
        -0x22t
        -0x4ct
        -0x5bt
        -0x4t
        -0x80t
        -0x11t
        -0x35t
        -0x45t
        0x6bt
        0x76t
        -0x46t
        0x5at
        0x7dt
        0x78t
        0xbt
        -0x6bt
        -0x1dt
        -0x53t
        0x74t
        -0x68t
        0x3bt
        0x36t
        0x64t
        0x6dt
        -0x24t
        -0x10t
        0x59t
        -0x57t
        0x4ct
        0x17t
        0x7ft
        -0x6ft
        -0x48t
        -0x37t
        0x57t
        0x1bt
        -0x20t
        0x61t
    .end array-data

    :array_4
    .array-data 1
        -0x5ct
        -0x5et
        -0x57t
        -0x3bt
        0x4et
        -0x37t
        0x3t
        -0x27t
        0x7et
        0xft
        -0x2et
        -0x53t
        -0x19t
        -0x2dt
        0x27t
        0x5bt
        -0x1dt
        -0x5ft
        -0x18t
        -0x1at
        0x7ct
        0x2at
        0x55t
        0xct
        -0x7at
        0x39t
        -0x29t
        -0x73t
        -0x48t
        0x12t
        0x6ft
        0x28t
        -0x33t
        -0x76t
        0x70t
        0x56t
        0x72t
        -0x7t
        -0x41t
        0x4ft
        0x73t
        -0x17t
        -0x9t
        0x57t
        0x16t
        -0x54t
        0x50t
        -0x40t
        -0x63t
        -0x49t
        0x47t
        0x71t
        0x60t
        -0x3ct
        0x74t
        0x43t
        0x6ct
        0x1ft
        -0x6dt
        0x77t
        -0x24t
        -0x32t
        0x20t
        -0x74t
        -0x67t
        0x5ft
        0x44t
        0x1t
        -0xbt
        0x1et
        -0x79t
        0x5et
        0x61t
        0x2ct
        0x4bt
        0x1dt
        -0x7ft
        0x15t
        -0xct
        0x23t
        -0x2at
        -0x16t
        -0x1ft
        0x67t
        -0xft
        0x7ft
        -0x2t
        -0x26t
        0x3ct
        0x7t
        0x53t
        0x6at
        -0x7ct
        -0x64t
        -0x35t
        0x2t
        -0x7dt
        0x33t
        -0x23t
        0x35t
        -0x1et
        0x59t
        0x5at
        -0x68t
        -0x5bt
        -0x6et
        0x64t
        0x4t
        0x6t
        0x10t
        0x4dt
        0x1ct
        -0x69t
        0x8t
        0x31t
        -0x12t
        -0x55t
        0x5t
        -0x51t
        0x79t
        -0x60t
        0x18t
        0x46t
        0x6dt
        -0x4t
        -0x77t
        -0x2ct
        -0x39t
        -0x1t
        -0x10t
        -0x31t
        0x42t
        -0x6ft
        -0x8t
        0x68t
        0xat
        0x65t
        -0x72t
        -0x4at
        -0x3t
        -0x3dt
        -0x11t
        0x78t
        0x4ct
        -0x34t
        -0x62t
        0x30t
        0x2et
        -0x44t
        0xbt
        0x54t
        0x1at
        -0x5at
        -0x45t
        0x26t
        -0x80t
        0x48t
        -0x6ct
        0x32t
        0x7dt
        -0x59t
        0x3ft
        -0x52t
        0x22t
        0x3dt
        0x66t
        -0x56t
        -0xat
        0x0t
        0x5dt
        -0x43t
        0x4at
        -0x20t
        0x3bt
        -0x4ct
        0x17t
        -0x75t
        -0x61t
        0x76t
        -0x50t
        0x24t
        -0x66t
        0x25t
        0x63t
        -0x25t
        -0x15t
        0x7at
        0x3et
        0x5ct
        -0x4dt
        -0x4ft
        0x29t
        -0xet
        -0x36t
        0x58t
        0x6et
        -0x28t
        -0x58t
        0x2ft
        0x75t
        -0x21t
        0x14t
        -0x5t
        0x13t
        0x49t
        -0x78t
        -0x4et
        -0x14t
        -0x1ct
        0x34t
        0x2dt
        -0x6at
        -0x3at
        0x3at
        -0x13t
        -0x6bt
        0xet
        -0x1bt
        -0x7bt
        0x6bt
        0x40t
        0x21t
        -0x65t
        0x9t
        0x19t
        0x2bt
        0x52t
        -0x22t
        0x45t
        -0x5dt
        -0x6t
        0x51t
        -0x3et
        -0x4bt
        -0x2ft
        -0x70t
        -0x47t
        -0xdt
        0x37t
        -0x3ft
        0xdt
        -0x46t
        0x41t
        0x11t
        0x38t
        0x7bt
        -0x42t
        -0x30t
        -0x2bt
        0x69t
        0x36t
        -0x38t
        0x62t
        0x1bt
        -0x7et
        -0x71t
    .end array-data

    :array_5
    .array-data 1
        -0x7dt
        -0xet
        0x2at
        -0x15t
        -0x17t
        -0x41t
        0x7bt
        -0x64t
        0x34t
        -0x6at
        -0x73t
        -0x68t
        -0x47t
        0x69t
        -0x74t
        0x29t
        0x3dt
        -0x78t
        0x68t
        0x6t
        0x39t
        0x11t
        0x4ct
        0xet
        -0x60t
        0x56t
        0x40t
        -0x6et
        0x15t
        -0x44t
        -0x4dt
        -0x24t
        0x6ft
        -0x8t
        0x26t
        -0x46t
        -0x42t
        -0x43t
        0x31t
        -0x5t
        -0x3dt
        -0x2t
        -0x80t
        0x61t
        -0x1ft
        0x7at
        0x32t
        -0x2et
        0x70t
        0x20t
        -0x5ft
        0x45t
        -0x14t
        -0x27t
        0x1at
        0x5dt
        -0x4ct
        -0x28t
        0x9t
        -0x5bt
        0x55t
        -0x72t
        0x37t
        0x76t
        -0x57t
        0x67t
        0x10t
        0x17t
        0x36t
        0x65t
        -0x4ft
        -0x6bt
        0x62t
        0x59t
        0x74t
        -0x5dt
        0x50t
        0x2ft
        0x4bt
        -0x38t
        -0x30t
        -0x71t
        -0x33t
        -0x2ct
        0x3ct
        -0x7at
        0x12t
        0x1dt
        0x23t
        -0x11t
        -0xct
        0x53t
        0x19t
        0x35t
        -0x1at
        0x7ft
        0x5et
        -0x2at
        0x79t
        0x51t
        0x22t
        0x14t
        -0x9t
        0x1et
        0x4at
        0x42t
        -0x65t
        0x41t
        0x73t
        0x2dt
        -0x3ft
        0x5ct
        -0x5at
        -0x5et
        -0x20t
        0x2et
        -0x2dt
        0x28t
        -0x45t
        -0x37t
        -0x52t
        0x6at
        -0x2ft
        0x5at
        0x30t
        -0x70t
        -0x7ct
        -0x7t
        -0x4et
        0x58t
        -0x31t
        0x7et
        -0x3bt
        -0x35t
        -0x69t
        -0x1ct
        0x16t
        0x6ct
        -0x6t
        -0x50t
        0x6dt
        0x1ft
        0x52t
        -0x67t
        0xdt
        0x4et
        0x3t
        -0x6ft
        -0x3et
        0x4dt
        0x64t
        0x77t
        -0x61t
        -0x23t
        -0x3ct
        0x49t
        -0x76t
        -0x66t
        0x24t
        0x38t
        -0x59t
        0x57t
        -0x7bt
        -0x39t
        0x7ct
        0x7dt
        -0x19t
        -0xat
        -0x49t
        -0x54t
        0x27t
        0x46t
        -0x22t
        -0x21t
        0x3bt
        -0x29t
        -0x62t
        0x2bt
        0xbt
        -0x2bt
        0x13t
        0x75t
        -0x10t
        0x72t
        -0x4at
        -0x63t
        0x1bt
        0x1t
        0x3ft
        0x44t
        -0x1bt
        -0x79t
        -0x3t
        0x7t
        -0xft
        -0x55t
        -0x6ct
        0x18t
        -0x16t
        -0x4t
        0x3at
        -0x7et
        0x5ft
        0x5t
        0x54t
        -0x25t
        0x0t
        -0x75t
        -0x1dt
        0x48t
        0xct
        -0x36t
        0x78t
        -0x77t
        0xat
        -0x1t
        0x3et
        0x5bt
        -0x7ft
        -0x12t
        0x71t
        -0x1et
        -0x26t
        0x2ct
        -0x48t
        -0x4bt
        -0x34t
        0x6et
        -0x58t
        0x6bt
        -0x53t
        0x60t
        -0x3at
        0x8t
        0x4t
        0x2t
        -0x18t
        -0xbt
        0x4ft
        -0x5ct
        -0xdt
        -0x40t
        -0x32t
        0x43t
        0x25t
        0x1ct
        0x21t
        0x33t
        0xft
        -0x51t
        0x47t
        -0x13t
        0x66t
        0x63t
        -0x6dt
        -0x56t
    .end array-data

    :array_6
    .array-data 1
        0x45t
        -0x2ct
        0xbt
        0x43t
        -0xft
        0x72t
        -0x13t
        -0x5ct
        -0x3et
        0x38t
        -0x1at
        0x71t
        -0x3t
        -0x4at
        0x3at
        -0x6bt
        0x50t
        0x44t
        0x4bt
        -0x1et
        0x74t
        0x6bt
        0x1et
        0x11t
        0x5at
        -0x3at
        -0x4ct
        -0x28t
        -0x5bt
        -0x76t
        0x70t
        -0x5dt
        -0x58t
        -0x6t
        0x5t
        -0x27t
        -0x69t
        0x40t
        -0x37t
        -0x70t
        -0x68t
        -0x71t
        -0x24t
        0x12t
        0x31t
        0x2ct
        0x47t
        0x6at
        -0x67t
        -0x52t
        -0x38t
        0x7ft
        -0x7t
        0x4ft
        0x5dt
        -0x6at
        0x6ft
        -0xct
        -0x4dt
        0x39t
        0x21t
        -0x26t
        -0x64t
        -0x7bt
        -0x62t
        0x3bt
        -0x10t
        -0x41t
        -0x11t
        0x6t
        -0x12t
        -0x1bt
        0x5ft
        0x20t
        0x10t
        -0x34t
        0x3ct
        0x54t
        0x4at
        0x52t
        -0x6ct
        0xet
        -0x40t
        0x28t
        -0xat
        0x56t
        0x60t
        -0x5et
        -0x1dt
        0xft
        -0x14t
        -0x63t
        0x24t
        -0x7dt
        0x7et
        -0x2bt
        0x7ct
        -0x15t
        0x18t
        -0x29t
        -0x33t
        -0x23t
        0x78t
        -0x1t
        -0x25t
        -0x5ft
        0x9t
        -0x30t
        0x76t
        -0x7ct
        0x75t
        -0x45t
        0x1dt
        0x1at
        0x2ft
        -0x50t
        -0x2t
        -0x2at
        0x34t
        0x63t
        0x35t
        -0x2et
        0x2at
        0x59t
        0x6dt
        0x4dt
        0x77t
        -0x19t
        -0x72t
        0x61t
        -0x31t
        -0x61t
        -0x32t
        0x27t
        -0xbt
        -0x80t
        -0x7at
        -0x39t
        -0x5at
        -0x5t
        -0x8t
        -0x79t
        -0x55t
        0x62t
        0x3ft
        -0x21t
        0x48t
        0x0t
        0x14t
        -0x66t
        -0x43t
        0x5bt
        0x4t
        -0x6et
        0x2t
        0x25t
        0x65t
        0x4ct
        0x53t
        0xct
        -0xet
        0x29t
        -0x51t
        0x17t
        0x6ct
        0x41t
        0x30t
        -0x17t
        -0x6dt
        0x55t
        -0x9t
        -0x54t
        0x68t
        0x26t
        -0x3ct
        0x7dt
        -0x36t
        0x7at
        0x3et
        -0x60t
        0x37t
        0x3t
        -0x3ft
        0x36t
        0x69t
        0x66t
        0x8t
        0x16t
        -0x59t
        -0x44t
        -0x3bt
        -0x2dt
        0x22t
        -0x49t
        0x13t
        0x46t
        0x32t
        -0x18t
        0x57t
        -0x78t
        0x2bt
        -0x7ft
        -0x4et
        0x4et
        0x64t
        0x1ct
        -0x56t
        -0x6ft
        0x58t
        0x2et
        -0x65t
        0x5ct
        0x1bt
        0x51t
        0x73t
        0x42t
        0x23t
        0x1t
        0x6et
        -0xdt
        0xdt
        -0x42t
        0x3dt
        0xat
        0x2dt
        0x1ft
        0x67t
        0x33t
        0x19t
        0x7bt
        0x5et
        -0x16t
        -0x22t
        -0x75t
        -0x35t
        -0x57t
        -0x74t
        -0x73t
        -0x53t
        0x49t
        -0x7et
        -0x1ct
        -0x46t
        -0x3dt
        0x15t
        -0x2ft
        -0x20t
        -0x77t
        -0x4t
        -0x4ft
        -0x47t
        -0x4bt
        0x7t
        0x79t
        -0x48t
        -0x1ft
    .end array-data

    :array_7
    .array-data 1
        -0x4et
        -0x4at
        0x23t
        0x11t
        -0x59t
        -0x78t
        -0x3bt
        -0x5at
        0x39t
        -0x71t
        -0x3ct
        -0x18t
        0x73t
        0x22t
        0x43t
        -0x3dt
        -0x7et
        0x27t
        -0x33t
        0x18t
        0x51t
        0x62t
        0x2dt
        -0x9t
        0x5ct
        0xet
        0x3bt
        -0x3t
        -0x36t
        -0x65t
        0xdt
        0xft
        0x79t
        -0x74t
        0x10t
        0x4ct
        0x74t
        0x1ct
        0xat
        -0x72t
        0x7ct
        -0x6ct
        0x7t
        -0x39t
        0x5et
        0x14t
        -0x5ft
        0x21t
        0x57t
        0x50t
        0x4et
        -0x57t
        -0x80t
        -0x27t
        -0x11t
        0x64t
        0x41t
        -0x31t
        0x3ct
        -0x12t
        0x2et
        0x13t
        0x29t
        -0x46t
        0x34t
        0x5at
        -0x52t
        -0x76t
        0x61t
        0x33t
        0x12t
        -0x47t
        0x55t
        -0x58t
        0x15t
        0x5t
        -0xat
        0x3t
        0x6t
        0x49t
        -0x4bt
        0x25t
        0x9t
        0x16t
        0xct
        0x2at
        0x38t
        -0x4t
        0x20t
        -0xct
        -0x1bt
        0x7ft
        -0x29t
        0x31t
        0x2bt
        0x66t
        0x6ft
        -0x1t
        0x72t
        -0x7at
        -0x10t
        -0x5dt
        0x2ft
        0x78t
        0x0t
        -0x44t
        -0x34t
        -0x1et
        -0x50t
        -0xft
        0x42t
        -0x4ct
        0x30t
        0x5ft
        0x60t
        0x4t
        -0x14t
        -0x5bt
        -0x1dt
        -0x75t
        -0x19t
        0x1dt
        -0x41t
        -0x7ct
        0x7bt
        -0x1at
        -0x7ft
        -0x8t
        -0x22t
        -0x28t
        -0x2et
        0x17t
        -0x32t
        0x4bt
        0x47t
        -0x2at
        0x69t
        0x6ct
        0x19t
        -0x67t
        -0x66t
        0x1t
        -0x4dt
        -0x7bt
        -0x4ft
        -0x7t
        0x59t
        -0x3et
        0x37t
        -0x17t
        -0x38t
        -0x60t
        -0x13t
        0x4ft
        -0x77t
        0x68t
        0x6dt
        -0x2bt
        0x26t
        -0x6ft
        -0x79t
        0x58t
        -0x43t
        -0x37t
        -0x68t
        -0x24t
        0x75t
        -0x40t
        0x76t
        -0xbt
        0x67t
        0x6bt
        0x7et
        -0x15t
        0x52t
        -0x35t
        -0x2ft
        0x5bt
        -0x61t
        0xbt
        -0x25t
        0x40t
        -0x6et
        0x1at
        -0x6t
        -0x54t
        -0x1ct
        -0x1ft
        0x71t
        0x1ft
        0x65t
        -0x73t
        -0x69t
        -0x62t
        -0x6bt
        -0x70t
        0x5dt
        -0x49t
        -0x3ft
        -0x51t
        0x54t
        -0x5t
        0x2t
        -0x20t
        0x35t
        -0x45t
        0x3at
        0x4dt
        -0x53t
        0x2ct
        0x3dt
        0x56t
        0x8t
        0x1bt
        0x4at
        -0x6dt
        0x6at
        -0x55t
        -0x48t
        0x7at
        -0xet
        0x7dt
        -0x26t
        0x3ft
        -0x2t
        0x3et
        -0x42t
        -0x16t
        -0x56t
        0x44t
        -0x3at
        -0x30t
        0x36t
        0x48t
        0x70t
        -0x6at
        0x77t
        0x24t
        0x53t
        -0x21t
        -0xdt
        -0x7dt
        0x28t
        0x32t
        0x45t
        0x1et
        -0x5ct
        -0x2dt
        -0x5et
        0x46t
        0x6et
        -0x64t
        -0x23t
        0x63t
        -0x2ct
        -0x63t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported block length: only 128/256/512 are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    ushr-int/lit8 p1, p1, 0x6

    iput p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    return-void
.end method

.method private addRoundKey(I)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private decryptBlock_128([BI[BI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v3

    add-int/lit8 v5, p2, 0x8

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    iget v8, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-wide v9, v7, v8

    sub-long/2addr v3, v9

    const/4 v9, 0x1

    aget-wide v10, v7, v9

    sub-long/2addr v5, v10

    iget v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    :goto_0
    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumnInv(J)J

    move-result-wide v3

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumnInv(J)J

    move-result-wide v5

    long-to-int v10, v3

    const/16 v11, 0x20

    ushr-long/2addr v3, v11

    long-to-int v3, v3

    long-to-int v4, v5

    ushr-long/2addr v5, v11

    long-to-int v5, v5

    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v12, v10, 0xff

    aget-byte v6, v6, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v13, v10, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v14, v10, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v10, v10, 0x18

    aget-byte v10, v14, v10

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v6, v12

    and-int/lit16 v12, v13, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v6, v12

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v6, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v12, v5, 0xff

    aget-byte v10, v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v13, v5, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v14, v5, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v5, v5, 0x18

    aget-byte v5, v14, v5

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    and-int/lit16 v12, v13, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v10, v12

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v5, v10

    int-to-long v12, v6

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    int-to-long v5, v5

    shl-long/2addr v5, v11

    or-long/2addr v5, v12

    sget-object v10, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v12, v4, 0xff

    aget-byte v10, v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v13, v4, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v9, v4, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v13, v9

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v4, v4, 0x18

    aget-byte v4, v13, v4

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v4, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v10, v3, 0xff

    aget-byte v9, v9, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v12, v3, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v13, v3, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v3, v3, 0x18

    aget-byte v3, v13, v3

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    and-int/lit16 v10, v12, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v9

    int-to-long v9, v4

    and-long/2addr v9, v14

    int-to-long v3, v3

    shl-long/2addr v3, v11

    or-long/2addr v3, v9

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_0

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v7, v7, v8

    aget-wide v8, v7, v8

    sub-long/2addr v5, v8

    const/4 v9, 0x1

    aget-wide v8, v7, v9

    sub-long/2addr v3, v8

    invoke-static {v5, v6, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 v2, v2, 0x8

    invoke-static {v3, v4, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-void

    :cond_0
    const/4 v9, 0x1

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v10, v10, v7

    aget-wide v11, v10, v8

    xor-long/2addr v5, v11

    aget-wide v11, v10, v9

    xor-long/2addr v3, v11

    move-wide/from16 v16, v3

    move-wide v3, v5

    move-wide/from16 v5, v16

    goto/16 :goto_0
.end method

.method private encryptBlock_128([BI[BI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v3

    add-int/lit8 v5, p2, 0x8

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aget-wide v9, v7, v8

    add-long/2addr v3, v9

    const/4 v9, 0x1

    aget-wide v10, v7, v9

    add-long/2addr v5, v10

    move v7, v8

    :goto_0
    long-to-int v10, v3

    const/16 v11, 0x20

    ushr-long/2addr v3, v11

    long-to-int v3, v3

    long-to-int v4, v5

    ushr-long/2addr v5, v11

    long-to-int v5, v5

    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v12, v10, 0xff

    aget-byte v6, v6, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v13, v10, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v14, v10, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v10, v10, 0x18

    aget-byte v10, v14, v10

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v6, v12

    and-int/lit16 v12, v13, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v6, v12

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v6, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v12, v5, 0xff

    aget-byte v10, v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v13, v5, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v14, v5, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v13, v13, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v5, v5, 0x18

    aget-byte v5, v14, v5

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    and-int/lit16 v12, v13, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v10, v12

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v5, v10

    int-to-long v12, v6

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    int-to-long v5, v5

    shl-long/2addr v5, v11

    or-long/2addr v5, v12

    sget-object v10, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v12, v4, 0xff

    aget-byte v10, v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v13, v4, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v13, v8

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v4, v4, 0x18

    aget-byte v4, v13, v4

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v10

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v4, v8

    sget-object v8, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v10, v3, 0xff

    aget-byte v8, v8, v10

    sget-object v10, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v12, v3, 0x8

    and-int/lit16 v12, v12, 0xff

    aget-byte v10, v10, v12

    sget-object v12, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v13, v3, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    sget-object v13, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v3, v3, 0x18

    aget-byte v3, v13, v3

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v8, v10

    and-int/lit16 v10, v12, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v8, v10

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v8

    int-to-long v12, v4

    and-long/2addr v12, v14

    int-to-long v3, v3

    shl-long/2addr v3, v11

    or-long/2addr v3, v12

    invoke-static {v5, v6}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumn(J)J

    move-result-wide v5

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumn(J)J

    move-result-wide v3

    add-int/2addr v7, v9

    iget v8, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v7, v8, :cond_0

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    iget v8, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-wide v10, v7, v8

    add-long/2addr v5, v10

    aget-wide v8, v7, v9

    add-long/2addr v3, v8

    invoke-static {v5, v6, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 v2, v2, 0x8

    invoke-static {v3, v4, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-void

    :cond_0
    const/4 v8, 0x0

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v10, v10, v7

    aget-wide v11, v10, v8

    xor-long/2addr v5, v11

    aget-wide v11, v10, v9

    xor-long/2addr v3, v11

    move-wide/from16 v16, v3

    move-wide v3, v5

    move-wide/from16 v5, v16

    goto/16 :goto_0
.end method

.method private invShiftRows()V
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    const-wide v2, 0xffffffff0000L

    const-wide v4, -0x100000000L

    const-wide v6, -0xffff00010000L

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported block length: only 128/256/512 are allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v12, v1, v11

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v14, v1, v10

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v16, v1, v9

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v18, v1, v8

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v20, 0x4

    aget-wide v21, v1, v20

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v23, 0x5

    aget-wide v24, v1, v23

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v26, 0x6

    aget-wide v27, v1, v26

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v29, 0x7

    aget-wide v30, v1, v29

    xor-long v32, v12, v14

    const-wide v34, -0xff00ff00ff0100L    # -5.82767264895205E303

    and-long v32, v32, v34

    xor-long v12, v12, v32

    xor-long v14, v14, v32

    xor-long v32, v16, v18

    and-long v32, v32, v34

    xor-long v16, v16, v32

    xor-long v18, v18, v32

    xor-long v32, v21, v24

    and-long v32, v32, v34

    xor-long v21, v21, v32

    xor-long v24, v24, v32

    xor-long v32, v27, v30

    and-long v32, v32, v34

    xor-long v27, v27, v32

    xor-long v30, v30, v32

    xor-long v32, v12, v16

    and-long v32, v32, v6

    xor-long v12, v12, v32

    xor-long v16, v16, v32

    xor-long v32, v14, v18

    const-wide v34, 0xffff0000ffff00L

    and-long v32, v32, v34

    xor-long v14, v14, v32

    xor-long v18, v18, v32

    xor-long v32, v21, v27

    and-long v6, v32, v6

    xor-long v21, v21, v6

    xor-long v6, v27, v6

    xor-long v27, v24, v30

    and-long v27, v27, v34

    xor-long v24, v24, v27

    xor-long v27, v30, v27

    xor-long v30, v12, v21

    and-long v4, v30, v4

    xor-long/2addr v12, v4

    xor-long v4, v21, v4

    xor-long v21, v14, v24

    const-wide v30, 0xffffffff000000L

    and-long v21, v21, v30

    xor-long v14, v14, v21

    xor-long v21, v24, v21

    xor-long v24, v16, v6

    and-long v1, v24, v2

    xor-long v16, v16, v1

    xor-long/2addr v1, v6

    xor-long v6, v18, v27

    const-wide v24, 0xffffffff00L

    and-long v6, v6, v24

    xor-long v18, v18, v6

    xor-long v6, v27, v6

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v12, v3, v11

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v14, v3, v10

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v16, v3, v9

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v18, v3, v8

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v4, v3, v20

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v21, v3, v23

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v1, v3, v26

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v6, v1, v29

    goto :goto_0

    :sswitch_1
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v12, v1, v11

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v14, v1, v10

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v16, v1, v9

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v18, v1, v8

    xor-long v20, v12, v14

    and-long v20, v20, v6

    xor-long v12, v12, v20

    xor-long v14, v14, v20

    xor-long v20, v16, v18

    and-long v6, v20, v6

    xor-long v16, v16, v6

    xor-long v6, v18, v6

    xor-long v18, v12, v16

    and-long v4, v18, v4

    xor-long/2addr v12, v4

    xor-long v4, v16, v4

    xor-long v16, v14, v6

    and-long v1, v16, v2

    xor-long/2addr v14, v1

    xor-long/2addr v1, v6

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v12, v3, v11

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v14, v3, v10

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v4, v3, v9

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v1, v3, v8

    goto :goto_0

    :sswitch_2
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v1, v11

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v1, v10

    xor-long v8, v2, v6

    and-long/2addr v4, v8

    xor-long v1, v2, v4

    xor-long v3, v6, v4

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v1, v5, v11

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v3, v1, v10

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private invSubBytes()V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v1, v0

    long-to-int v1, v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v5, v1, 0xff

    aget-byte v3, v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v1, v1, 0x18

    aget-byte v1, v7, v1

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T0:[B

    and-int/lit16 v5, v2, 0xff

    aget-byte v3, v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T1:[B

    ushr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T2:[B

    ushr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->T3:[B

    ushr-int/lit8 v2, v2, 0x18

    aget-byte v2, v7, v2

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    int-to-long v5, v1

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    int-to-long v1, v2

    shl-long/2addr v1, v4

    or-long/2addr v1, v5

    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static mixColumn(J)J
    .locals 7

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v2

    xor-long/2addr v2, p0

    const/16 v4, 0x10

    invoke-static {v4, v2, v3}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v4

    xor-long/2addr v2, v4

    const/16 v4, 0x30

    invoke-static {v4, p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v5

    xor-long/2addr v2, v5

    xor-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX2(J)J

    move-result-wide p0

    const/16 v5, 0x20

    invoke-static {v5, p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide p0

    xor-long/2addr p0, v2

    const/16 v2, 0x28

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v2

    xor-long/2addr p0, v2

    invoke-static {v4, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static mixColumnInv(J)J
    .locals 16

    move-wide/from16 v0, p0

    const/16 v2, 0x8

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v2

    xor-long/2addr v2, v0

    const/16 v4, 0x20

    invoke-static {v4, v2, v3}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v5

    xor-long/2addr v2, v5

    const/16 v5, 0x30

    invoke-static {v5, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v6

    xor-long/2addr v2, v6

    xor-long v6, v2, v0

    invoke-static {v5, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v8

    const/16 v5, 0x38

    invoke-static {v5, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v10

    xor-long v12, v6, v10

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v14

    invoke-static {v12, v13}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v12

    xor-long/2addr v12, v14

    const/16 v5, 0x10

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v14

    xor-long/2addr v14, v0

    invoke-static {v12, v13}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v12

    xor-long/2addr v12, v0

    const/16 v4, 0x28

    invoke-static {v4, v12, v13}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v12

    xor-long/2addr v12, v14

    xor-long v14, v6, v8

    invoke-static {v12, v13}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v12

    xor-long/2addr v12, v14

    invoke-static {v5, v2, v3}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v14

    invoke-static {v12, v13}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v12

    xor-long/2addr v12, v14

    const/16 v5, 0x18

    invoke-static {v5, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v14

    xor-long/2addr v14, v6

    xor-long/2addr v8, v14

    xor-long/2addr v8, v10

    invoke-static {v12, v13}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v12

    xor-long/2addr v8, v12

    const/16 v5, 0x20

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v5

    xor-long/2addr v0, v5

    xor-long/2addr v0, v10

    invoke-static {v8, v9}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v5

    xor-long/2addr v0, v5

    invoke-static {v4, v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotate(IJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mulX(J)J

    move-result-wide v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private mixColumns()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumn(J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mixColumnsInv()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumnInv(J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static mulX(J)J
    .locals 4

    const-wide v0, 0x7f7f7f7f7f7f7f7fL    # 1.3824172084878715E306

    and-long/2addr v0, p0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr p0, v2

    const/4 v2, 0x7

    ushr-long/2addr p0, v2

    const-wide/16 v2, 0x1d

    mul-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static mulX2(J)J
    .locals 7

    const-wide v0, 0x3f3f3f3f3f3f3f3fL    # 4.767922794117647E-4

    and-long/2addr v0, p0

    const/4 v2, 0x2

    shl-long/2addr v0, v2

    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, p0

    const/4 v4, 0x6

    ushr-long/2addr v2, v4

    const-wide/16 v5, 0x1d

    mul-long/2addr v2, v5

    xor-long/2addr v0, v2

    const-wide v2, 0x4040404040404040L    # 32.501960784313724

    and-long/2addr p0, v2

    ushr-long/2addr p0, v4

    mul-long/2addr p0, v5

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static rotate(IJ)J
    .locals 2

    ushr-long v0, p1, p0

    neg-int p0, p0

    shl-long p0, p1, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private rotateLeft([J[J)V
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x28

    const/16 v7, 0x18

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported block length: only 128/256/512 are allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    aget-wide v8, p1, v5

    aget-wide v10, p1, v4

    aget-wide v12, p1, v3

    aget-wide v14, p1, v2

    const/4 v1, 0x4

    aget-wide v16, p1, v1

    const/16 v18, 0x5

    aget-wide v19, p1, v18

    const/16 v21, 0x6

    aget-wide v22, p1, v21

    const/16 v24, 0x7

    aget-wide v25, p1, v24

    ushr-long v27, v12, v7

    shl-long v29, v14, v6

    or-long v27, v27, v29

    aput-wide v27, p2, v5

    ushr-long/2addr v14, v7

    shl-long v27, v16, v6

    or-long v14, v14, v27

    aput-wide v14, p2, v4

    ushr-long v4, v16, v7

    shl-long v14, v19, v6

    or-long/2addr v4, v14

    aput-wide v4, p2, v3

    ushr-long v3, v19, v7

    shl-long v14, v22, v6

    or-long/2addr v3, v14

    aput-wide v3, p2, v2

    ushr-long v2, v22, v7

    shl-long v4, v25, v6

    or-long/2addr v2, v4

    aput-wide v2, p2, v1

    ushr-long v1, v25, v7

    shl-long v3, v8, v6

    or-long/2addr v1, v3

    aput-wide v1, p2, v18

    ushr-long v1, v8, v7

    shl-long v3, v10, v6

    or-long/2addr v1, v3

    aput-wide v1, p2, v21

    ushr-long v1, v10, v7

    shl-long v3, v12, v6

    or-long/2addr v1, v3

    aput-wide v1, p2, v24

    goto :goto_0

    :sswitch_1
    aget-wide v8, p1, v5

    aget-wide v10, p1, v4

    aget-wide v12, p1, v3

    aget-wide v14, p1, v2

    ushr-long v16, v10, v7

    shl-long v18, v12, v6

    or-long v16, v16, v18

    aput-wide v16, p2, v5

    ushr-long/2addr v12, v7

    shl-long v16, v14, v6

    or-long v12, v12, v16

    aput-wide v12, p2, v4

    ushr-long v4, v14, v7

    shl-long v12, v8, v6

    or-long/2addr v4, v12

    aput-wide v4, p2, v3

    ushr-long v3, v8, v7

    shl-long v5, v10, v6

    or-long/2addr v3, v5

    aput-wide v3, p2, v2

    goto :goto_0

    :sswitch_2
    aget-wide v1, p1, v5

    aget-wide v6, p1, v4

    const/16 v3, 0x38

    ushr-long v8, v1, v3

    const/16 v10, 0x8

    shl-long v11, v6, v10

    or-long/2addr v8, v11

    aput-wide v8, p2, v5

    ushr-long v5, v6, v3

    shl-long/2addr v1, v10

    or-long/2addr v1, v5

    aput-wide v1, p2, v4

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private shiftRows()V
    .locals 34

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    const-wide v2, 0xffffffff0000L

    const-wide v4, -0x100000000L

    const-wide v6, -0xffff00010000L

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported block length: only 128/256/512 are allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v12, v1, v11

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v14, v1, v10

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v16, v1, v9

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v18, v1, v8

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v20, 0x4

    aget-wide v21, v1, v20

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v23, 0x5

    aget-wide v24, v1, v23

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v26, 0x6

    aget-wide v27, v1, v26

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/16 v29, 0x7

    aget-wide v30, v1, v29

    xor-long v32, v12, v21

    and-long v4, v32, v4

    xor-long/2addr v12, v4

    xor-long v4, v21, v4

    xor-long v21, v14, v24

    const-wide v32, 0xffffffff000000L

    and-long v21, v21, v32

    xor-long v14, v14, v21

    xor-long v21, v24, v21

    xor-long v24, v16, v27

    and-long v1, v24, v2

    xor-long v16, v16, v1

    xor-long v1, v27, v1

    xor-long v24, v18, v30

    const-wide v27, 0xffffffff00L

    and-long v24, v24, v27

    xor-long v18, v18, v24

    xor-long v24, v30, v24

    xor-long v27, v12, v16

    and-long v27, v27, v6

    xor-long v12, v12, v27

    xor-long v16, v16, v27

    xor-long v27, v14, v18

    const-wide v30, 0xffff0000ffff00L

    and-long v27, v27, v30

    xor-long v14, v14, v27

    xor-long v18, v18, v27

    xor-long v27, v4, v1

    and-long v6, v27, v6

    xor-long v3, v4, v6

    xor-long/2addr v1, v6

    xor-long v5, v21, v24

    and-long v5, v5, v30

    xor-long v21, v21, v5

    xor-long v5, v24, v5

    xor-long v24, v12, v14

    const-wide v27, -0xff00ff00ff0100L    # -5.82767264895205E303

    and-long v24, v24, v27

    xor-long v12, v12, v24

    xor-long v14, v14, v24

    xor-long v24, v16, v18

    and-long v24, v24, v27

    xor-long v16, v16, v24

    xor-long v18, v18, v24

    xor-long v24, v3, v21

    and-long v24, v24, v27

    xor-long v3, v3, v24

    xor-long v21, v21, v24

    xor-long v24, v1, v5

    and-long v24, v24, v27

    xor-long v1, v1, v24

    xor-long v5, v5, v24

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v12, v7, v11

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v14, v7, v10

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v16, v7, v9

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v18, v7, v8

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v3, v7, v20

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v21, v3, v23

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v1, v3, v26

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v5, v1, v29

    goto :goto_0

    :sswitch_1
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v12, v1, v11

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v14, v1, v10

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v16, v1, v9

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v18, v1, v8

    xor-long v20, v12, v16

    and-long v4, v20, v4

    xor-long/2addr v12, v4

    xor-long v4, v16, v4

    xor-long v16, v14, v18

    and-long v1, v16, v2

    xor-long/2addr v14, v1

    xor-long v1, v18, v1

    xor-long v16, v12, v14

    and-long v16, v16, v6

    xor-long v12, v12, v16

    xor-long v14, v14, v16

    xor-long v16, v4, v1

    and-long v6, v16, v6

    xor-long v3, v4, v6

    xor-long/2addr v1, v6

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v12, v5, v11

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v14, v5, v10

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v3, v5, v9

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v1, v3, v8

    goto :goto_0

    :sswitch_2
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v1, v11

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v1, v10

    xor-long v8, v2, v6

    and-long/2addr v4, v8

    xor-long v1, v2, v4

    xor-long v3, v6, v4

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v1, v5, v11

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aput-wide v3, v1, v10

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private subBytes()V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v1, v0

    long-to-int v1, v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v5, v1, 0xff

    aget-byte v3, v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v1, v1, 0x18

    aget-byte v1, v7, v1

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S0:[B

    and-int/lit16 v5, v2, 0xff

    aget-byte v3, v3, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S1:[B

    ushr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S2:[B

    ushr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->S3:[B

    ushr-int/lit8 v2, v2, 0x18

    aget-byte v2, v7, v2

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    int-to-long v5, v1

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    int-to-long v1, v2

    shl-long/2addr v1, v4

    or-long/2addr v1, v5

    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private subRoundKey(I)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    sub-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private workingKeyExpandEven([J[J)V
    .locals 13

    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    new-array v1, v0, [J

    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v2, v2, [J

    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide v5, 0x1000100010001L

    move p1, v4

    :goto_0
    move v3, v4

    :goto_1
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_0

    aget-wide v7, p2, v3

    add-long/2addr v7, v5

    aput-wide v7, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_2
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v1, v3

    aget-wide v10, v2, v3

    add-long/2addr v8, v10

    aput-wide v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    move v3, v4

    :goto_3
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v3

    aget-wide v10, v2, v3

    xor-long/2addr v8, v10

    aput-wide v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    move v3, v4

    :goto_4
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v8, v7, v3

    aget-wide v10, v2, v3

    add-long/2addr v8, v10

    aput-wide v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v7, v7, p1

    iget v8, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v3, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v3, p1, :cond_4

    goto/16 :goto_9

    :cond_4
    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    const/4 v8, 0x1

    if-eq v3, v7, :cond_9

    add-int/lit8 p1, p1, 0x2

    shl-long/2addr v5, v8

    move v3, v4

    :goto_5
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_5

    aget-wide v9, p2, v3

    add-long/2addr v9, v5

    aput-wide v9, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    move v3, v4

    :goto_6
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v9, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    add-int/2addr v9, v3

    aget-wide v9, v1, v9

    aget-wide v11, v2, v3

    add-long/2addr v9, v11

    aput-wide v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    move v3, v4

    :goto_7
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_7

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v9, v7, v3

    aget-wide v11, v2, v3

    xor-long/2addr v9, v11

    aput-wide v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    move v3, v4

    :goto_8
    iget v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v3, v7, :cond_8

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v9, v7, v3

    aget-wide v11, v2, v3

    add-long/2addr v9, v11

    aput-wide v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v7, v7, p1

    iget v9, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {v3, v4, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v3, p1, :cond_9

    :goto_9
    return-void

    :cond_9
    add-int/lit8 p1, p1, 0x2

    shl-long/2addr v5, v8

    aget-wide v9, v1, v4

    :goto_a
    if-ge v8, v0, :cond_a

    add-int/lit8 v3, v8, -0x1

    aget-wide v11, v1, v8

    aput-wide v11, v1, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v3, v0, -0x1

    aput-wide v9, v1, v3

    goto/16 :goto_0
.end method

.method private workingKeyExpandKT([J[J)V
    .locals 10

    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v1, v0, [J

    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v3, v2, [J

    iget v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v4, v4, [J

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    iget v8, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    iget v4, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    if-ne v4, v6, :cond_0

    invoke-static {p1, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {p1, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {p1, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move p1, v5

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v0, p1

    aget-wide v8, v1, p1

    add-long/2addr v6, v8

    aput-wide v6, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    move p1, v5

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v0, v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v6, v0, p1

    aget-wide v8, v3, p1

    xor-long/2addr v6, v8

    aput-wide v6, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    move p1, v5

    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    array-length v0, v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v0, p1

    aget-wide v6, v1, p1

    add-long/2addr v2, v6

    aput-wide v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    invoke-static {p1, v5, p2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private workingKeyExpandOdd()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->rotateLeft([J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private xorRoundKey(I)V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DSTU7624"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_6

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->forEncryption:Z

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    array-length p2, p1

    shl-int/lit8 p2, p2, 0x3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    shl-int/lit8 v0, v0, 0x6

    const/16 v1, 0x80

    if-eq p2, v1, :cond_1

    const/16 v1, 0x100

    if-eq p2, v1, :cond_1

    const/16 v1, 0x200

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported key length: only 128/256/512 are allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eq p2, v0, :cond_3

    mul-int/lit8 v0, v0, 0x2

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const/16 v0, 0x12

    goto :goto_2

    :sswitch_1
    const/16 v0, 0xe

    goto :goto_2

    :sswitch_2
    const/16 v0, 0xa

    :goto_2
    iput v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    :goto_3
    ushr-int/lit8 v0, p2, 0x6

    iput v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundKeys:[[J

    iget v3, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array v3, v3, [J

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInKey:I

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    array-length v1, p1

    ushr-int/lit8 p2, p2, 0x3

    if-ne v1, p2, :cond_5

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    new-array p1, p1, [J

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKeyExpandKT([J[J)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKeyExpandEven([J[J)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKeyExpandOdd()V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid key parameter passed to DSTU7624Engine init"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameter passed to DSTU7624Engine init"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->workingKey:[J

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    add-int/2addr v0, p4

    array-length v1, p3

    if-gt v0, v1, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->forEncryption:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->addRoundKey(I)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->encryptBlock_128([BI[BI)V

    goto :goto_2

    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subBytes()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->shiftRows()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumns()V

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    if-ne v1, p1, :cond_0

    iget p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->addRoundKey(I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    goto :goto_2

    :cond_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->xorRoundKey(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->wordsInBlock:I

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subRoundKey(I)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->roundsAmount:I

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->decryptBlock_128([BI[BI)V

    goto :goto_2

    :goto_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->mixColumnsInv()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->invShiftRows()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->invSubBytes()V

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_2

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->subRoundKey(I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->xorRoundKey(I)V

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "Output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "Input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DSTU7624Engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DSTU7624Engine;->internalState:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    return-void
.end method
