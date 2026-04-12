.class public Lcom/winlator/cmod/xserver/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# instance fields
.field public final client:Lcom/winlator/cmod/xserver/XClient;

.field public final eventMask:Lcom/winlator/cmod/xserver/Bitmask;


# direct methods
.method public constructor <init>(Lcom/winlator/cmod/xserver/XClient;Lcom/winlator/cmod/xserver/Bitmask;)V
    .locals 0
    .param p1, "client"    # Lcom/winlator/cmod/xserver/XClient;
    .param p2, "eventMask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/winlator/cmod/xserver/EventListener;->client:Lcom/winlator/cmod/xserver/XClient;

    .line 13
    iput-object p2, p0, Lcom/winlator/cmod/xserver/EventListener;->eventMask:Lcom/winlator/cmod/xserver/Bitmask;

    .line 14
    return-void
.end method


# virtual methods
.method public isInterestedIn(I)Z
    .locals 1
    .param p1, "eventId"    # I

    .line 17
    iget-object v0, p0, Lcom/winlator/cmod/xserver/EventListener;->eventMask:Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/Bitmask;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isInterestedIn(Lcom/winlator/cmod/xserver/Bitmask;)Z
    .locals 1
    .param p1, "mask"    # Lcom/winlator/cmod/xserver/Bitmask;

    .line 21
    iget-object v0, p0, Lcom/winlator/cmod/xserver/EventListener;->eventMask:Lcom/winlator/cmod/xserver/Bitmask;

    invoke-virtual {v0, p1}, Lcom/winlator/cmod/xserver/Bitmask;->intersects(Lcom/winlator/cmod/xserver/Bitmask;)Z

    move-result v0

    return v0
.end method

.method public sendEvent(Lcom/winlator/cmod/xserver/events/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/winlator/cmod/xserver/events/Event;

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/winlator/cmod/xserver/EventListener;->client:Lcom/winlator/cmod/xserver/XClient;

    invoke-virtual {v0}, Lcom/winlator/cmod/xserver/XClient;->getSequenceNumber()S

    move-result v0

    iget-object v1, p0, Lcom/winlator/cmod/xserver/EventListener;->client:Lcom/winlator/cmod/xserver/XClient;

    invoke-virtual {v1}, Lcom/winlator/cmod/xserver/XClient;->getOutputStream()Lcom/winlator/cmod/xconnector/XOutputStream;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/winlator/cmod/xserver/events/Event;->send(SLcom/winlator/cmod/xconnector/XOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
