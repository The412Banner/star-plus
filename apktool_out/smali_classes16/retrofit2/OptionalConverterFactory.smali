.class final Lretrofit2/OptionalConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "OptionalConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/OptionalConverterFactory$OptionalConverter;
    }
.end annotation


# static fields
.field static final INSTANCE:Lretrofit2/Converter$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lretrofit2/OptionalConverterFactory;

    invoke-direct {v0}, Lretrofit2/OptionalConverterFactory;-><init>()V

    sput-object v0, Lretrofit2/OptionalConverterFactory;->INSTANCE:Lretrofit2/Converter$Factory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 34
    invoke-static {p1}, Lretrofit2/OptionalConverterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Optional;

    if-eq v0, v1, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, v1}, Lretrofit2/OptionalConverterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 39
    .local v0, "innerType":Ljava/lang/reflect/Type;
    nop

    .line 40
    invoke-virtual {p3, v0, p2}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 41
    .local v1, "delegate":Lretrofit2/Converter;, "Lretrofit2/Converter<Lokhttp3/ResponseBody;Ljava/lang/Object;>;"
    new-instance v2, Lretrofit2/OptionalConverterFactory$OptionalConverter;

    invoke-direct {v2, v1}, Lretrofit2/OptionalConverterFactory$OptionalConverter;-><init>(Lretrofit2/Converter;)V

    return-object v2
.end method
