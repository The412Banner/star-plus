.class public Lorg/tukaani/xz/PowerPCOptions;
.super Lorg/tukaani/xz/BCJOptions;


# static fields
.field private static final ALIGNMENT:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/tukaani/xz/BCJOptions;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDecoderMemoryUsage()I
    .locals 1

    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->getDecoderMemoryUsage()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getEncoderMemoryUsage()I
    .locals 1

    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->getEncoderMemoryUsage()I

    move-result v0

    return v0
.end method

.method getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
    .locals 3

    new-instance v0, Lorg/tukaani/xz/BCJEncoder;

    const-wide/16 v1, 0x5

    invoke-direct {v0, p0, v1, v2}, Lorg/tukaani/xz/BCJEncoder;-><init>(Lorg/tukaani/xz/BCJOptions;J)V

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 3

    new-instance p2, Lorg/tukaani/xz/SimpleInputStream;

    new-instance v0, Lorg/tukaani/xz/simple/PowerPC;

    const/4 v1, 0x0

    iget v2, p0, Lorg/tukaani/xz/PowerPCOptions;->startOffset:I

    invoke-direct {v0, v1, v2}, Lorg/tukaani/xz/simple/PowerPC;-><init>(ZI)V

    invoke-direct {p2, p1, v0}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object p2
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 3

    new-instance p2, Lorg/tukaani/xz/SimpleOutputStream;

    new-instance v0, Lorg/tukaani/xz/simple/PowerPC;

    const/4 v1, 0x1

    iget v2, p0, Lorg/tukaani/xz/PowerPCOptions;->startOffset:I

    invoke-direct {v0, v1, v2}, Lorg/tukaani/xz/simple/PowerPC;-><init>(ZI)V

    invoke-direct {p2, p1, v0}, Lorg/tukaani/xz/SimpleOutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object p2
.end method

.method public bridge synthetic getStartOffset()I
    .locals 1

    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->getStartOffset()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setStartOffset(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/tukaani/xz/BCJOptions;->setStartOffset(I)V

    return-void
.end method
