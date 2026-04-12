.class interface abstract Lorg/openjsse/sun/security/ssl/SSLRecord;
.super Ljava/lang/Object;
.source "SSLRecord.java"

# interfaces
.implements Lorg/openjsse/sun/security/ssl/Record;


# static fields
.field public static final handshakeHeaderSize:I = 0x4

.field public static final headerPlusMaxIVSize:I = 0x15

.field public static final headerSize:I = 0x5

.field public static final maxLargeRecordSize:I = 0x8145

.field public static final maxPlaintextPlusSize:I = 0x145

.field public static final maxRecordSize:I = 0x4145

.field public static final v2NoCipher:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/openjsse/sun/security/ssl/SSLRecord;->v2NoCipher:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x80t
        0x3t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method
