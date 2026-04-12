.class final Lorg/conscrypt/EmptyArray;
.super Ljava/lang/Object;
.source "EmptyArray.java"


# static fields
.field static final BOOLEAN:[Z

.field static final BYTE:[B

.field static final CHAR:[C

.field static final CLASS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final DOUBLE:[D

.field static final INT:[I

.field static final OBJECT:[Ljava/lang/Object;

.field static final STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

.field static final STRING:[Ljava/lang/String;

.field static final THROWABLE:[Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/4 v0, 0x0

    new-array v1, v0, [Z

    sput-object v1, Lorg/conscrypt/EmptyArray;->BOOLEAN:[Z

    .line 25
    new-array v1, v0, [B

    sput-object v1, Lorg/conscrypt/EmptyArray;->BYTE:[B

    .line 26
    new-array v1, v0, [C

    sput-object v1, Lorg/conscrypt/EmptyArray;->CHAR:[C

    .line 27
    new-array v1, v0, [D

    sput-object v1, Lorg/conscrypt/EmptyArray;->DOUBLE:[D

    .line 28
    new-array v1, v0, [I

    sput-object v1, Lorg/conscrypt/EmptyArray;->INT:[I

    .line 30
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/conscrypt/EmptyArray;->CLASS:[Ljava/lang/Class;

    .line 31
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/conscrypt/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 32
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    .line 33
    new-array v1, v0, [Ljava/lang/Throwable;

    sput-object v1, Lorg/conscrypt/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    .line 34
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lorg/conscrypt/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
