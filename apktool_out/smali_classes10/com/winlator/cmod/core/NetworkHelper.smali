.class public Lcom/winlator/cmod/core/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# instance fields
.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/winlator/cmod/core/NetworkHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    return-void
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 3
    .param p0, "ipAddress"    # I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNetmask(I)Ljava/lang/String;
    .locals 1
    .param p0, "netmask"    # I

    .line 61
    const/16 v0, 0x18

    if-ne p0, v0, :cond_0

    const-string v0, "255.255.255.0"

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    const-string v0, "255.255.0.0"

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const-string v0, "255.0.0.0"

    goto :goto_0

    :cond_2
    const-string v0, "0.0.0.0"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getGateway()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/winlator/cmod/core/NetworkHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/core/NetworkHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 53
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/net/DhcpInfo;->gateway:I

    :cond_1
    return v1
.end method

.method public getIpAddress()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/winlator/cmod/core/NetworkHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winlator/cmod/core/NetworkHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNetmask()I
    .locals 7

    .line 25
    iget-object v0, p0, Lcom/winlator/cmod/core/NetworkHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/core/NetworkHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 28
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    if-nez v0, :cond_1

    return v1

    .line 30
    :cond_1
    iget v1, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 31
    .local v1, "netmask":I
    iget v2, v0, Landroid/net/DhcpInfo;->netmask:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    iget v2, v0, Landroid/net/DhcpInfo;->netmask:I

    const/16 v3, 0x20

    if-le v2, v3, :cond_5

    .line 33
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/core/NetworkHelper;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Lcom/winlator/cmod/core/NetworkHelper;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 34
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 35
    .local v3, "networkInterface":Ljava/net/NetworkInterface;
    if-eqz v3, :cond_4

    .line 36
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InterfaceAddress;

    .line 37
    .local v5, "address":Ljava/net/InterfaceAddress;
    if-eqz v2, :cond_3

    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 38
    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v4
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 39
    goto :goto_1

    .line 41
    .end local v5    # "address":Ljava/net/InterfaceAddress;
    :cond_3
    goto :goto_0

    .line 44
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_4
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    .line 47
    :cond_5
    :goto_2
    return v1
.end method
