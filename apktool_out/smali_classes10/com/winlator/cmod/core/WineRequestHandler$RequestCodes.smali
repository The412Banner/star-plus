.class abstract Lcom/winlator/cmod/core/WineRequestHandler$RequestCodes;
.super Ljava/lang/Object;
.source "WineRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winlator/cmod/core/WineRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "RequestCodes"
.end annotation


# static fields
.field static final GET_WINE_CLIPBOARD:I = 0x2

.field static final OPEN_URL:I = 0x1

.field static final SET_WINE_CLIPBAORD:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/winlator/cmod/core/WineRequestHandler;


# direct methods
.method constructor <init>(Lcom/winlator/cmod/core/WineRequestHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/winlator/cmod/core/WineRequestHandler;

    .line 22
    iput-object p1, p0, Lcom/winlator/cmod/core/WineRequestHandler$RequestCodes;->this$0:Lcom/winlator/cmod/core/WineRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
