.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 -Util.kt\nokio/-Util\n+ 3 Buffer.kt\nokio/internal/BufferKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1019:1\n78#2:1020\n75#2:1053\n75#2:1055\n66#2:1115\n66#2:1140\n72#2:1170\n69#2:1176\n78#2:1350\n66#2:1362\n75#2:1463\n78#2:1925\n237#3,32:1021\n272#3,10:1056\n285#3,18:1066\n399#3,2:1084\n105#3:1086\n401#3:1087\n107#3,18:1088\n306#3,9:1106\n315#3,15:1116\n333#3,9:1131\n342#3,20:1141\n365#3,9:1161\n374#3,5:1171\n379#3,17:1177\n636#3,56:1194\n695#3,55:1250\n752#3:1305\n755#3:1306\n756#3,6:1308\n766#3,7:1314\n776#3,6:1321\n784#3,5:1327\n816#3,6:1332\n826#3:1338\n827#3,10:1340\n837#3,2:1351\n842#3,9:1353\n852#3,61:1363\n590#3:1424\n593#3:1425\n594#3,5:1427\n601#3:1432\n604#3,7:1433\n613#3,17:1440\n405#3:1457\n408#3,5:1458\n413#3,10:1464\n426#3,5:1474\n429#3,2:1479\n917#3:1481\n918#3,87:1483\n1008#3,48:1570\n560#3:1618\n567#3,21:1619\n1059#3,7:1640\n1069#3,7:1647\n1079#3,4:1654\n1086#3,8:1658\n1097#3,10:1666\n1110#3,14:1676\n434#3,63:1690\n500#3,40:1753\n543#3:1793\n545#3,13:1795\n1127#3:1808\n1178#3:1809\n1179#3,38:1811\n1219#3,2:1849\n1221#3,4:1852\n1228#3,3:1856\n1232#3,4:1860\n105#3:1864\n1236#3,22:1865\n107#3,18:1887\n1262#3,2:1905\n1264#3,3:1908\n105#3:1911\n1267#3,13:1912\n1280#3,13:1926\n107#3,18:1939\n1297#3,2:1957\n1300#3:1960\n105#3:1961\n1301#3,50:1962\n107#3,18:2012\n1360#3,13:2030\n1376#3,32:2043\n1411#3,12:2075\n1426#3,18:2087\n1448#3:2105\n1449#3:2107\n1454#3,34:2108\n1#4:1054\n1#4:1307\n1#4:1339\n1#4:1426\n1#4:1482\n1#4:1794\n1#4:1810\n1#4:1851\n1#4:1859\n1#4:1907\n1#4:1959\n1#4:2106\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n160#1:1020\n190#1:1053\n228#1:1055\n254#1:1115\n257#1:1140\n260#1:1170\n260#1:1176\n328#1:1350\n331#1:1362\n367#1:1463\n472#1:1925\n174#1,32:1021\n245#1,10:1056\n248#1,18:1066\n251#1,2:1084\n251#1:1086\n251#1:1087\n251#1,18:1088\n254#1,9:1106\n254#1,15:1116\n257#1,9:1131\n257#1,20:1141\n260#1,9:1161\n260#1,5:1171\n260#1,17:1177\n272#1,56:1194\n275#1,55:1250\n277#1:1305\n280#1:1306\n280#1,6:1308\n282#1,7:1314\n285#1,6:1321\n288#1,5:1327\n322#1,6:1332\n328#1:1338\n328#1,10:1340\n328#1,2:1351\n331#1,9:1353\n331#1,61:1363\n333#1:1424\n336#1:1425\n336#1,5:1427\n338#1:1432\n341#1,7:1433\n344#1,17:1440\n364#1:1457\n367#1,5:1458\n367#1,10:1464\n369#1,5:1474\n372#1,2:1479\n377#1:1481\n377#1,87:1483\n380#1,48:1570\n399#1:1618\n405#1,21:1619\n426#1,7:1640\n430#1,7:1647\n432#1,4:1654\n434#1,8:1658\n438#1,10:1666\n442#1,14:1676\n446#1,63:1690\n449#1,40:1753\n452#1:1793\n452#1,13:1795\n454#1:1808\n454#1:1809\n454#1,38:1811\n456#1,2:1849\n456#1,4:1852\n466#1,3:1856\n466#1,4:1860\n466#1:1864\n466#1,22:1865\n466#1,18:1887\n472#1,2:1905\n472#1,3:1908\n472#1:1911\n472#1,13:1912\n472#1,13:1926\n472#1,18:1939\n477#1,2:1957\n477#1:1960\n477#1:1961\n477#1,50:1962\n477#1,18:2012\n487#1,13:2030\n549#1,32:2043\n551#1,12:2075\n559#1,18:2087\n564#1:2105\n564#1:2107\n566#1,34:2108\n280#1:1307\n328#1:1339\n336#1:1426\n377#1:1482\n452#1:1794\n454#1:1810\n456#1:1851\n466#1:1859\n472#1:1907\n477#1:1959\n564#1:2106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0000H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0000H\u0016J\u0008\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\u000cJ\u0006\u0010\u0016\u001a\u00020\u0000J$\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000cH\u0007J\u0018\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000cJ \u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0008\u0010 \u001a\u00020\u0000H\u0016J\u0008\u0010!\u001a\u00020\u0000H\u0016J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\u0008\u0010&\u001a\u00020#H\u0016J\u0008\u0010\'\u001a\u00020\u0012H\u0016J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000cH\u0087\u0002\u00a2\u0006\u0002\u0008+J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008-J\u0008\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001dH\u0002J\u000e\u00102\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00104\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)H\u0016J\u0018\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\u000cH\u0016J \u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u000cH\u0016J\u0010\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001dH\u0016J\u0018\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\u000cH\u0016J\u0010\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001dH\u0016J\u0018\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\u000cH\u0016J\u0008\u0010<\u001a\u00020=H\u0016J\u0008\u0010>\u001a\u00020#H\u0016J\u0006\u0010?\u001a\u00020\u001dJ\u0008\u0010@\u001a\u00020\u0019H\u0016J\u0008\u0010A\u001a\u00020\u0001H\u0016J\u0018\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001dH\u0016J(\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020GH\u0016J \u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010H\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020KH\u0007J\u0008\u0010M\u001a\u00020)H\u0016J\u0008\u0010N\u001a\u00020GH\u0016J\u0010\u0010N\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010O\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010P\u001a\u00020\u000cH\u0016J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=J\u0016\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\u000cJ \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010S\u001a\u00020#H\u0002J\u0010\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020GH\u0016J\u0018\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010U\u001a\u00020\u000cH\u0016J\u0008\u0010V\u001a\u00020/H\u0016J\u0008\u0010W\u001a\u00020/H\u0016J\u0008\u0010X\u001a\u00020\u000cH\u0016J\u0008\u0010Y\u001a\u00020\u000cH\u0016J\u0008\u0010Z\u001a\u00020[H\u0016J\u0008\u0010\\\u001a\u00020[H\u0016J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010]\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010`\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020KH\u0007J\u0008\u0010a\u001a\u00020\u001fH\u0016J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010b\u001a\u00020/H\u0016J\n\u0010c\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010d\u001a\u00020\u001fH\u0016J\u0010\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u000cH\u0016J\u0010\u0010f\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010g\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00020jH\u0016J\u0006\u0010k\u001a\u00020\u001dJ\u0006\u0010l\u001a\u00020\u001dJ\u0006\u0010m\u001a\u00020\u001dJ\r\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008nJ\u0010\u0010o\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0006\u0010p\u001a\u00020\u001dJ\u000e\u0010p\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020/J\u0008\u0010q\u001a\u00020rH\u0016J\u0008\u0010s\u001a\u00020\u001fH\u0016J\u0015\u0010t\u001a\u00020\n2\u0006\u0010u\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008vJ\u0010\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020FH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020GH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00122\u0006\u0010x\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001dH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020z2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010{\u001a\u00020\u000c2\u0006\u0010x\u001a\u00020zH\u0016J\u0010\u0010|\u001a\u00020\u00002\u0006\u00106\u001a\u00020/H\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0010\u0010\u007f\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J,\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/2\u0006\u0010^\u001a\u00020_H\u0016J\u001b\u0010\u008c\u0001\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000cH\u0007J\u0012\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001fH\u0016J$\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020\u00002\u0007\u0010\u008f\u0001\u001a\u00020/H\u0016R\u0014\u0010\u0006\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8G@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0091\u0001"
    }
    d2 = {
        "Lokio/Buffer;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "",
        "Ljava/nio/channels/ByteChannel;",
        "()V",
        "buffer",
        "getBuffer",
        "()Lokio/Buffer;",
        "head",
        "Lokio/Segment;",
        "<set-?>",
        "",
        "size",
        "()J",
        "setSize$okio",
        "(J)V",
        "clear",
        "",
        "clone",
        "close",
        "completeSegmentByteCount",
        "copy",
        "copyTo",
        "out",
        "Ljava/io/OutputStream;",
        "offset",
        "byteCount",
        "digest",
        "Lokio/ByteString;",
        "algorithm",
        "",
        "emit",
        "emitCompleteSegments",
        "equals",
        "",
        "other",
        "",
        "exhausted",
        "flush",
        "get",
        "",
        "pos",
        "getByte",
        "index",
        "-deprecated_getByte",
        "hashCode",
        "",
        "hmac",
        "key",
        "hmacSha1",
        "hmacSha256",
        "hmacSha512",
        "indexOf",
        "b",
        "fromIndex",
        "toIndex",
        "bytes",
        "indexOfElement",
        "targetBytes",
        "inputStream",
        "Ljava/io/InputStream;",
        "isOpen",
        "md5",
        "outputStream",
        "peek",
        "rangeEquals",
        "bytesOffset",
        "read",
        "sink",
        "Ljava/nio/ByteBuffer;",
        "",
        "readAll",
        "Lokio/Sink;",
        "readAndWriteUnsafe",
        "Lokio/Buffer$UnsafeCursor;",
        "unsafeCursor",
        "readByte",
        "readByteArray",
        "readByteString",
        "readDecimalLong",
        "readFrom",
        "input",
        "forever",
        "readFully",
        "readHexadecimalUnsignedLong",
        "readInt",
        "readIntLe",
        "readLong",
        "readLongLe",
        "readShort",
        "",
        "readShortLe",
        "readString",
        "charset",
        "Ljava/nio/charset/Charset;",
        "readUnsafe",
        "readUtf8",
        "readUtf8CodePoint",
        "readUtf8Line",
        "readUtf8LineStrict",
        "limit",
        "request",
        "require",
        "select",
        "options",
        "Lokio/Options;",
        "sha1",
        "sha256",
        "sha512",
        "-deprecated_size",
        "skip",
        "snapshot",
        "timeout",
        "Lokio/Timeout;",
        "toString",
        "writableSegment",
        "minimumCapacity",
        "writableSegment$okio",
        "write",
        "source",
        "byteString",
        "Lokio/Source;",
        "writeAll",
        "writeByte",
        "writeDecimalLong",
        "v",
        "writeHexadecimalUnsignedLong",
        "writeInt",
        "i",
        "writeIntLe",
        "writeLong",
        "writeLongLe",
        "writeShort",
        "s",
        "writeShortLe",
        "writeString",
        "string",
        "beginIndex",
        "endIndex",
        "writeTo",
        "writeUtf8",
        "writeUtf8CodePoint",
        "codePoint",
        "UnsafeCursor",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public head:Lokio/Segment;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 142
    const-wide/16 p2, 0x0

    move-wide v2, p2

    goto :goto_0

    .line 0
    :cond_0
    move-wide v2, p2

    .line 142
    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 143
    iget-wide p2, p0, Lokio/Buffer;->size:J

    sub-long p4, p2, v2

    move-wide v4, p4

    goto :goto_1

    .line 142
    :cond_1
    move-wide v4, p4

    .line 143
    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JILjava/lang/Object;)Lokio/Buffer;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->copyTo(Lokio/Buffer;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v2, p2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method private final digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 510
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 511
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    .local v1, "head":Lokio/Segment;
    const/4 v2, 0x0

    .line 512
    .local v2, "$i$a$-let-Buffer$digest$1":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->limit:I

    iget v6, v1, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 513
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 514
    .local v3, "s":Lokio/Segment;
    :goto_0
    if-eq v3, v1, :cond_0

    .line 515
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 516
    iget-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v4

    .line 514
    goto :goto_0

    .line 518
    .end local v3    # "s":Lokio/Segment;
    :cond_0
    nop

    .line 511
    .end local v1    # "head":Lokio/Segment;
    .end local v2    # "$i$a$-let-Buffer$digest$1":I
    nop

    .line 519
    :cond_1
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "messageDigest.digest()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method private final hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    .line 532
    nop

    .line 533
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 534
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 535
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    .local v1, "head":Lokio/Segment;
    const/4 v2, 0x0

    .line 536
    .local v2, "$i$a$-let-Buffer$hmac$1":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->limit:I

    iget v6, v1, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljavax/crypto/Mac;->update([BII)V

    .line 537
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 538
    .local v3, "s":Lokio/Segment;
    :goto_0
    if-eq v3, v1, :cond_0

    .line 539
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 540
    iget-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v4

    .line 538
    goto :goto_0

    .line 542
    .end local v3    # "s":Lokio/Segment;
    :cond_0
    nop

    .line 535
    .end local v1    # "head":Lokio/Segment;
    .end local v2    # "$i$a$-let-Buffer$hmac$1":I
    :cond_1
    nop

    .line 543
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    const-string v3, "mac.doFinal()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 544
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static synthetic readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 577
    new-instance p1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object p0

    return-object p0
.end method

.method private final readFrom(Ljava/io/InputStream;JZ)V
    .locals 9
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .param p4, "forever"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    move-wide v0, p2

    .line 226
    .local v0, "byteCount":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    return-void

    .line 227
    :cond_1
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    .line 228
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    .local v3, "b$iv":I
    const/4 v4, 0x0

    .line 1055
    .local v4, "$i$f$minOf":I
    int-to-long v5, v3

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 228
    .end local v3    # "b$iv":I
    .end local v4    # "$i$f$minOf":I
    long-to-int v3, v5

    .line 229
    .local v3, "maxToCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 230
    .local v4, "bytesRead":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 231
    iget v5, v2, Lokio/Segment;->pos:I

    iget v6, v2, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_2

    .line 233
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 234
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 236
    :cond_2
    if-eqz p4, :cond_3

    return-void

    .line 237
    :cond_3
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 239
    :cond_4
    iget v5, v2, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v2, Lokio/Segment;->limit:I

    .line 240
    iget-wide v5, p0, Lokio/Buffer;->size:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lokio/Buffer;->size:J

    .line 241
    int-to-long v5, v4

    sub-long/2addr v0, v5

    .line 226
    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "maxToCopy":I
    .end local v4    # "bytesRead":I
    goto :goto_0
.end method

.method public static synthetic readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 568
    new-instance p1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 184
    iget-wide p2, p0, Lokio/Buffer;->size:J

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_getByte(J)B
    .locals 1
    .param p1, "index"    # J
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to operator function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this[index]"
            imports = {}
        .end subannotation
    .end annotation

    .line 590
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    return v0
.end method

.method public final -deprecated_size()J
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "size"
            imports = {}
        .end subannotation
    .end annotation

    .line 597
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public buffer()Lokio/Buffer;
    .locals 0

    .line 76
    return-object p0
.end method

.method public final clear()V
    .locals 4

    .line 364
    move-object v0, p0

    .local v0, "$this$commonClear$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1457
    .local v1, "$i$f$commonClear":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 364
    .end local v0    # "$this$commonClear$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonClear":I
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lokio/Buffer;->copy()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 493
    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 7

    .line 245
    move-object v0, p0

    .local v0, "$this$commonCompleteSegmentByteCount$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1056
    .local v1, "$i$f$commonCompleteSegmentByteCount":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 1057
    .local v2, "result$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1061
    .local v4, "tail$iv":Lokio/Segment;
    iget v5, v4, Lokio/Segment;->limit:I

    const/16 v6, 0x2000

    if-ge v5, v6, :cond_1

    iget-boolean v5, v4, Lokio/Segment;->owner:Z

    if-eqz v5, :cond_1

    .line 1062
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v2, v5

    .line 1065
    :cond_1
    move-wide v4, v2

    .line 245
    .end local v0    # "$this$commonCompleteSegmentByteCount$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonCompleteSegmentByteCount":I
    .end local v2    # "result$iv":J
    .end local v4    # "tail$iv":Lokio/Segment;
    :goto_0
    return-wide v4
.end method

.method public final copy()Lokio/Buffer;
    .locals 8

    .line 559
    move-object v0, p0

    .local v0, "$this$commonCopy$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 2087
    .local v1, "$i$f$commonCopy":I
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 2088
    .local v2, "result$iv":Lokio/Buffer;
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_1

    .line 2090
    :cond_0
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2091
    .local v3, "head$iv":Lokio/Segment;
    invoke-virtual {v3}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v4

    .line 2093
    .local v4, "headCopy$iv":Lokio/Segment;
    iput-object v4, v2, Lokio/Buffer;->head:Lokio/Segment;

    .line 2094
    iget-object v5, v2, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v5, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 2095
    iget-object v5, v4, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 2097
    iget-object v5, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 2098
    .local v5, "s$iv":Lokio/Segment;
    :goto_0
    if-eq v5, v3, :cond_1

    .line 2099
    iget-object v6, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 2100
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 2098
    goto :goto_0

    .line 2103
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    .line 2104
    nop

    .line 559
    .end local v0    # "$this$commonCopy$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonCopy":I
    .end local v2    # "result$iv":Lokio/Buffer;
    .end local v3    # "head$iv":Lokio/Segment;
    .end local v4    # "headCopy$iv":Lokio/Segment;
    .end local v5    # "s$iv":Lokio/Segment;
    :goto_1
    return-object v2
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 14
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "out"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    move-wide/from16 v4, p2

    .line 146
    .local v4, "offset":J
    move-wide/from16 v8, p4

    .line 147
    .local v8, "byteCount":J
    iget-wide v2, v0, Lokio/Buffer;->size:J

    move-wide v6, v8

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 148
    const-wide/16 v2, 0x0

    cmp-long v6, v8, v2

    if-nez v6, :cond_0

    return-object v0

    .line 151
    :cond_0
    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 152
    .local v6, "s":Lokio/Segment;
    :goto_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v6, Lokio/Segment;->limit:I

    iget v10, v6, Lokio/Segment;->pos:I

    sub-int/2addr v7, v10

    int-to-long v10, v7

    cmp-long v7, v4, v10

    if-ltz v7, :cond_1

    .line 153
    iget v7, v6, Lokio/Segment;->limit:I

    iget v10, v6, Lokio/Segment;->pos:I

    sub-int/2addr v7, v10

    int-to-long v10, v7

    sub-long/2addr v4, v10

    .line 154
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 152
    goto :goto_0

    .line 158
    :cond_1
    :goto_1
    cmp-long v7, v8, v2

    if-lez v7, :cond_2

    .line 159
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v6, Lokio/Segment;->pos:I

    int-to-long v10, v7

    add-long/2addr v10, v4

    long-to-int v7, v10

    .line 160
    .local v7, "pos":I
    iget v10, v6, Lokio/Segment;->limit:I

    sub-int/2addr v10, v7

    .local v10, "a$iv":I
    const/4 v11, 0x0

    .line 1020
    .local v11, "$i$f$minOf":I
    int-to-long v12, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 160
    .end local v10    # "a$iv":I
    .end local v11    # "$i$f$minOf":I
    long-to-int v10, v12

    .line 161
    .local v10, "toCopy":I
    iget-object v11, v6, Lokio/Segment;->data:[B

    invoke-virtual {p1, v11, v7, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 162
    int-to-long v11, v10

    sub-long/2addr v8, v11

    .line 163
    const-wide/16 v4, 0x0

    .line 164
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .line 158
    .end local v7    # "pos":I
    .end local v10    # "toCopy":I
    goto :goto_1

    .line 167
    :cond_2
    return-object v0
.end method

.method public final copyTo(Lokio/Buffer;J)Lokio/Buffer;
    .locals 8
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J

    const-string/jumbo v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v6, v0, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 13
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    move-object v0, p1

    const-string/jumbo v1, "out"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    move-object v1, p0

    .local v1, "$this$commonCopyTo$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1021
    .local v2, "$i$f$commonCopyTo":I
    move-wide v5, p2

    .line 1022
    .local v5, "offset$iv":J
    move-wide/from16 v9, p4

    .line 1023
    .local v9, "byteCount$iv":J
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v3

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1024
    const-wide/16 v3, 0x0

    cmp-long v7, v9, v3

    if-nez v7, :cond_0

    goto :goto_3

    .line 1026
    :cond_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v7

    add-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Lokio/Buffer;->setSize$okio(J)V

    .line 1029
    iget-object v7, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1030
    .local v7, "s$iv":Lokio/Segment;
    :goto_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v8, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v11

    int-to-long v11, v8

    cmp-long v8, v5, v11

    if-ltz v8, :cond_1

    .line 1031
    iget v8, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v11

    int-to-long v11, v8

    sub-long/2addr v5, v11

    .line 1032
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 1030
    goto :goto_0

    .line 1036
    :cond_1
    :goto_1
    cmp-long v8, v9, v3

    if-lez v8, :cond_3

    .line 1037
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v8

    .line 1038
    .local v8, "copy$iv":Lokio/Segment;
    iget v11, v8, Lokio/Segment;->pos:I

    long-to-int v12, v5

    add-int/2addr v11, v12

    iput v11, v8, Lokio/Segment;->pos:I

    .line 1039
    iget v11, v8, Lokio/Segment;->pos:I

    long-to-int v12, v9

    add-int/2addr v11, v12

    iget v12, v8, Lokio/Segment;->limit:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v8, Lokio/Segment;->limit:I

    .line 1040
    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_2

    .line 1041
    iput-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    .line 1042
    iget-object v11, v8, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v11, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 1043
    iget-object v11, v8, Lokio/Segment;->next:Lokio/Segment;

    iput-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 1045
    :cond_2
    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v8}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1046
    :goto_2
    nop

    .line 1047
    iget v11, v8, Lokio/Segment;->limit:I

    iget v12, v8, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    .line 1048
    const-wide/16 v5, 0x0

    .line 1049
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .line 1036
    .end local v8    # "copy$iv":Lokio/Segment;
    goto :goto_1

    .line 1052
    :cond_3
    nop

    .line 174
    .end local v1    # "$this$commonCopyTo$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonCopyTo":I
    .end local v5    # "offset$iv":J
    .end local v7    # "s$iv":Lokio/Segment;
    .end local v9    # "byteCount$iv":J
    :goto_3
    return-object v1
.end method

.method public emit()Lokio/Buffer;
    .locals 0

    .line 100
    return-object p0
.end method

.method public bridge synthetic emit()Lokio/BufferedSink;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lokio/Buffer;->emit()Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 0

    .line 98
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 22
    .param p1, "other"    # Ljava/lang/Object;

    .line 549
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .local v1, "$this$commonEquals$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 2043
    .local v2, "$i$f$commonEquals":I
    if-ne v1, v0, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 2044
    :cond_0
    instance-of v4, v0, Lokio/Buffer;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v3, v5

    goto/16 :goto_2

    .line 2045
    :cond_1
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object v4, v0

    check-cast v4, Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    move v3, v5

    goto/16 :goto_2

    .line 2046
    :cond_2
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 2048
    :cond_3
    iget-object v4, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2049
    .local v4, "sa$iv":Lokio/Segment;
    move-object v6, v0

    check-cast v6, Lokio/Buffer;

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2050
    .local v6, "sb$iv":Lokio/Segment;
    iget v7, v4, Lokio/Segment;->pos:I

    .line 2051
    .local v7, "posA$iv":I
    iget v10, v6, Lokio/Segment;->pos:I

    .line 2053
    .local v10, "posB$iv":I
    const-wide/16 v11, 0x0

    .line 2054
    .local v11, "pos$iv":J
    const-wide/16 v13, 0x0

    .line 2055
    .local v13, "count$iv":J
    :goto_0
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v15

    cmp-long v15, v11, v15

    if-gez v15, :cond_8

    .line 2056
    iget v15, v4, Lokio/Segment;->limit:I

    sub-int/2addr v15, v7

    iget v3, v6, Lokio/Segment;->limit:I

    sub-int/2addr v3, v10

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v13, v3

    .line 2058
    move-wide/from16 v17, v8

    :goto_1
    cmp-long v3, v17, v13

    if-gez v3, :cond_5

    .line 2059
    .local v17, "i$iv":J
    iget-object v3, v4, Lokio/Segment;->data:[B

    add-int/lit8 v15, v7, 0x1

    .end local v7    # "posA$iv":I
    .local v15, "posA$iv":I
    aget-byte v3, v3, v7

    iget-object v7, v6, Lokio/Segment;->data:[B

    add-int/lit8 v19, v10, 0x1

    .end local v10    # "posB$iv":I
    .local v19, "posB$iv":I
    aget-byte v7, v7, v10

    if-eq v3, v7, :cond_4

    move v3, v5

    goto :goto_2

    .line 2058
    :cond_4
    const-wide/16 v20, 0x1

    add-long v20, v17, v20

    move v7, v15

    move/from16 v10, v19

    move-wide/from16 v17, v20

    .end local v17    # "i$iv":J
    goto :goto_1

    .line 2062
    .end local v15    # "posA$iv":I
    .end local v19    # "posB$iv":I
    .restart local v7    # "posA$iv":I
    .restart local v10    # "posB$iv":I
    :cond_5
    iget v3, v4, Lokio/Segment;->limit:I

    if-ne v7, v3, :cond_6

    .line 2063
    iget-object v3, v4, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2064
    .end local v4    # "sa$iv":Lokio/Segment;
    .local v3, "sa$iv":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->pos:I

    move v7, v4

    move-object v4, v3

    .line 2067
    .end local v3    # "sa$iv":Lokio/Segment;
    .restart local v4    # "sa$iv":Lokio/Segment;
    :cond_6
    iget v3, v6, Lokio/Segment;->limit:I

    if-ne v10, v3, :cond_7

    .line 2068
    iget-object v3, v6, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2069
    .end local v6    # "sb$iv":Lokio/Segment;
    .local v3, "sb$iv":Lokio/Segment;
    iget v6, v3, Lokio/Segment;->pos:I

    move v10, v6

    move-object v6, v3

    .line 2071
    .end local v3    # "sb$iv":Lokio/Segment;
    .restart local v6    # "sb$iv":Lokio/Segment;
    :cond_7
    add-long/2addr v11, v13

    .line 2055
    goto :goto_0

    .line 2074
    :cond_8
    const/4 v3, 0x1

    .line 549
    .end local v1    # "$this$commonEquals$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonEquals":I
    .end local v4    # "sa$iv":Lokio/Segment;
    .end local v6    # "sb$iv":Lokio/Segment;
    .end local v7    # "posA$iv":I
    .end local v10    # "posB$iv":I
    .end local v11    # "pos$iv":J
    .end local v13    # "count$iv":J
    :goto_2
    return v3
.end method

.method public exhausted()Z
    .locals 4

    .line 102
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0

    .line 489
    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 0

    .line 78
    return-object p0
.end method

.method public final getByte(J)B
    .locals 14
    .param p1, "pos"    # J

    .line 251
    move-object v0, p0

    .local v0, "$this$commonGet$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1084
    .local v1, "$i$f$commonGet":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1085
    move-object v2, v0

    .local v2, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v3, 0x0

    .line 1086
    .local v3, "$i$f$seek":I
    iget-object v4, v2, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_3

    .line 1087
    nop

    .line 1088
    .local v4, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, p1

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    .line 1090
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v5

    .line 1091
    .local v5, "offset$iv$iv":J
    :goto_0
    cmp-long v7, v5, p1

    if-lez v7, :cond_0

    .line 1092
    iget-object v7, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v7

    .line 1093
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    .line 1091
    goto :goto_0

    .line 1095
    :cond_0
    move-object v7, v4

    .local v7, "s$iv":Lokio/Segment;
    move-wide v8, v5

    .local v8, "offset$iv":J
    const/4 v10, 0x0

    .line 1087
    .local v10, "$i$a$-seek-BufferKt$commonGet$1$iv":I
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v7, Lokio/Segment;->data:[B

    iget v12, v7, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long/2addr v12, p1

    sub-long/2addr v12, v8

    long-to-int v12, v12

    aget-byte v11, v11, v12

    goto :goto_2

    .line 1098
    .end local v5    # "offset$iv$iv":J
    .end local v7    # "s$iv":Lokio/Segment;
    .end local v8    # "offset$iv":J
    .end local v10    # "$i$a$-seek-BufferKt$commonGet$1$iv":I
    :cond_1
    const-wide/16 v5, 0x0

    .line 1099
    .restart local v5    # "offset$iv$iv":J
    :goto_1
    nop

    .line 1100
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v5

    .line 1101
    .local v7, "nextOffset$iv$iv":J
    cmp-long v9, v7, p1

    if-lez v9, :cond_2

    .line 1105
    .end local v7    # "nextOffset$iv$iv":J
    move-object v7, v4

    .local v7, "s$iv":Lokio/Segment;
    move-wide v8, v5

    .restart local v8    # "offset$iv":J
    const/4 v10, 0x0

    .line 1087
    .restart local v10    # "$i$a$-seek-BufferKt$commonGet$1$iv":I
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v7, Lokio/Segment;->data:[B

    iget v12, v7, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long/2addr v12, p1

    sub-long/2addr v12, v8

    long-to-int v12, v12

    aget-byte v11, v11, v12

    goto :goto_2

    .line 1102
    .end local v8    # "offset$iv":J
    .end local v10    # "$i$a$-seek-BufferKt$commonGet$1$iv":I
    .local v7, "nextOffset$iv$iv":J
    :cond_2
    iget-object v9, v4, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v9

    .line 1103
    move-wide v5, v7

    .line 1099
    .end local v7    # "nextOffset$iv$iv":J
    goto :goto_1

    .line 1086
    .end local v4    # "s$iv$iv":Lokio/Segment;
    .end local v5    # "offset$iv$iv":J
    :cond_3
    const-wide/16 v4, -0x1

    .local v4, "offset$iv":J
    const/4 v6, 0x0

    check-cast v6, Lokio/Segment;

    .local v6, "s$iv":Lokio/Segment;
    const/4 v7, 0x0

    .line 1087
    .local v7, "$i$a$-seek-BufferKt$commonGet$1$iv":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v6, Lokio/Segment;->data:[B

    iget v9, v6, Lokio/Segment;->pos:I

    int-to-long v9, v9

    add-long/2addr v9, p1

    sub-long/2addr v9, v4

    long-to-int v9, v9

    aget-byte v11, v8, v9

    .line 251
    .end local v0    # "$this$commonGet$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonGet":I
    .end local v2    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v3    # "$i$f$seek":I
    .end local v4    # "offset$iv":J
    .end local v6    # "s$iv":Lokio/Segment;
    .end local v7    # "$i$a$-seek-BufferKt$commonGet$1$iv":I
    :goto_2
    return v11
.end method

.method public hashCode()I
    .locals 8

    .line 551
    move-object v0, p0

    .local v0, "$this$commonHashCode$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 2075
    .local v1, "$i$f$commonHashCode":I
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_2

    .line 2076
    .local v2, "s$iv":Lokio/Segment;
    const/4 v3, 0x1

    .line 2077
    .local v3, "result$iv":I
    :cond_0
    nop

    .line 2078
    iget v4, v2, Lokio/Segment;->pos:I

    .line 2079
    .local v4, "pos$iv":I
    iget v5, v2, Lokio/Segment;->limit:I

    .line 2080
    .local v5, "limit$iv":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 2081
    mul-int/lit8 v6, v3, 0x1f

    iget-object v7, v2, Lokio/Segment;->data:[B

    aget-byte v7, v7, v4

    add-int v3, v6, v7

    .line 2082
    add-int/lit8 v4, v4, 0x1

    .line 2080
    goto :goto_0

    .line 2084
    :cond_1
    iget-object v6, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v6

    .line 2085
    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v2, v6, :cond_0

    .line 2086
    .end local v4    # "pos$iv":I
    .end local v5    # "limit$iv":I
    goto :goto_1

    .line 2075
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "result$iv":I
    :cond_2
    const/4 v3, 0x0

    .line 551
    .end local v0    # "$this$commonHashCode$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonHashCode":I
    :goto_1
    return v3
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .locals 6
    .param p1, "b"    # B

    .line 458
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J

    .line 464
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 29
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    .line 466
    move/from16 v0, p1

    move-object/from16 v1, p0

    .local v1, "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1856
    .local v2, "$i$f$commonIndexOf":I
    move-wide/from16 v3, p2

    .line 1857
    .local v3, "fromIndex$iv":J
    move-wide/from16 v5, p4

    .line 1858
    .local v5, "toIndex$iv":J
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v3

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v7, v5, v3

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_10

    .line 1860
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-lez v7, :cond_2

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v5

    .line 1861
    :cond_2
    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    const-wide/16 v8, -0x1

    goto/16 :goto_8

    .line 1863
    :cond_3
    move-wide v10, v3

    .local v10, "fromIndex$iv$iv":J
    move-object v7, v1

    .local v7, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v12, 0x0

    .line 1864
    .local v12, "$i$f$seek":I
    iget-object v13, v7, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v13, :cond_f

    .line 1886
    nop

    .line 1887
    .local v13, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v10

    cmp-long v14, v14, v10

    if-gez v14, :cond_9

    .line 1889
    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v14

    .line 1890
    .local v14, "offset$iv$iv":J
    :goto_2
    cmp-long v16, v14, v10

    if-lez v16, :cond_4

    .line 1891
    iget-object v8, v13, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v8

    .line 1892
    iget v8, v13, Lokio/Segment;->limit:I

    iget v9, v13, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v14, v8

    .line 1890
    goto :goto_2

    .line 1894
    :cond_4
    move-object v8, v13

    .local v8, "s$iv":Lokio/Segment;
    move-wide/from16 v17, v14

    .local v17, "offset$iv":J
    const/4 v9, 0x0

    .line 1865
    .local v9, "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    if-eqz v8, :cond_8

    move-object/from16 v19, v8

    .line 1866
    .local v19, "s$iv":Lokio/Segment;
    move-wide/from16 v20, v17

    move-object/from16 v28, v19

    move/from16 v19, v2

    move-object/from16 v2, v28

    .line 1869
    .local v2, "s$iv":Lokio/Segment;
    .local v19, "$i$f$commonIndexOf":I
    .local v20, "offset$iv":J
    :goto_3
    cmp-long v22, v20, v5

    if-gez v22, :cond_7

    .line 1870
    move-object/from16 v22, v7

    .end local v7    # "$this$seek$iv$iv":Lokio/Buffer;
    .local v22, "$this$seek$iv$iv":Lokio/Buffer;
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 1871
    .local v7, "data$iv":[B
    move-object/from16 v23, v8

    .end local v8    # "s$iv":Lokio/Segment;
    .local v23, "s$iv":Lokio/Segment;
    iget v8, v2, Lokio/Segment;->limit:I

    move/from16 v24, v9

    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .local v24, "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    int-to-long v8, v8

    move/from16 v25, v12

    .end local v12    # "$i$f$seek":I
    .local v25, "$i$f$seek":I
    iget v12, v2, Lokio/Segment;->pos:I

    move-object/from16 v26, v13

    .end local v13    # "s$iv$iv":Lokio/Segment;
    .local v26, "s$iv$iv":Lokio/Segment;
    int-to-long v12, v12

    add-long/2addr v12, v5

    sub-long v12, v12, v20

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 1872
    .local v8, "limit$iv":I
    iget v9, v2, Lokio/Segment;->pos:I

    int-to-long v12, v9

    add-long/2addr v12, v3

    sub-long v12, v12, v20

    long-to-int v9, v12

    .line 1873
    .local v9, "pos$iv":I
    :goto_4
    if-ge v9, v8, :cond_6

    .line 1874
    aget-byte v12, v7, v9

    if-ne v12, v0, :cond_5

    .line 1875
    iget v12, v2, Lokio/Segment;->pos:I

    sub-int v12, v9, v12

    int-to-long v12, v12

    add-long v12, v12, v20

    move-wide v8, v12

    goto/16 :goto_8

    .line 1877
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 1873
    goto :goto_4

    .line 1881
    :cond_6
    iget v12, v2, Lokio/Segment;->limit:I

    iget v13, v2, Lokio/Segment;->pos:I

    sub-int/2addr v12, v13

    int-to-long v12, v12

    add-long v20, v20, v12

    .line 1882
    move-wide/from16 v3, v20

    .line 1883
    iget-object v12, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v12

    .line 1869
    .end local v7    # "data$iv":[B
    .end local v8    # "limit$iv":I
    .end local v9    # "pos$iv":I
    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move/from16 v12, v25

    move-object/from16 v13, v26

    goto :goto_3

    .line 1886
    .end local v22    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v23    # "s$iv":Lokio/Segment;
    .end local v24    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v25    # "$i$f$seek":I
    .end local v26    # "s$iv$iv":Lokio/Segment;
    .local v7, "$this$seek$iv$iv":Lokio/Buffer;
    .local v8, "s$iv":Lokio/Segment;
    .local v9, "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v12    # "$i$f$seek":I
    .restart local v13    # "s$iv$iv":Lokio/Segment;
    :cond_7
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v12

    move-object/from16 v26, v13

    .end local v7    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v8    # "s$iv":Lokio/Segment;
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v12    # "$i$f$seek":I
    .end local v13    # "s$iv$iv":Lokio/Segment;
    .restart local v22    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v23    # "s$iv":Lokio/Segment;
    .restart local v24    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v25    # "$i$f$seek":I
    .restart local v26    # "s$iv$iv":Lokio/Segment;
    const-wide/16 v8, -0x1

    goto/16 :goto_8

    .line 1865
    .end local v19    # "$i$f$commonIndexOf":I
    .end local v20    # "offset$iv":J
    .end local v22    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v23    # "s$iv":Lokio/Segment;
    .end local v24    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v25    # "$i$f$seek":I
    .end local v26    # "s$iv$iv":Lokio/Segment;
    .local v2, "$i$f$commonIndexOf":I
    .restart local v7    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v8    # "s$iv":Lokio/Segment;
    .restart local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v12    # "$i$f$seek":I
    .restart local v13    # "s$iv$iv":Lokio/Segment;
    :cond_8
    move/from16 v19, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v12

    move-object/from16 v26, v13

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v7    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v8    # "s$iv":Lokio/Segment;
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v12    # "$i$f$seek":I
    .end local v13    # "s$iv$iv":Lokio/Segment;
    .restart local v19    # "$i$f$commonIndexOf":I
    .restart local v22    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v23    # "s$iv":Lokio/Segment;
    .restart local v24    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v25    # "$i$f$seek":I
    .restart local v26    # "s$iv$iv":Lokio/Segment;
    const-wide/16 v8, -0x1

    goto/16 :goto_8

    .line 1897
    .end local v14    # "offset$iv$iv":J
    .end local v17    # "offset$iv":J
    .end local v19    # "$i$f$commonIndexOf":I
    .end local v22    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v23    # "s$iv":Lokio/Segment;
    .end local v24    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v25    # "$i$f$seek":I
    .end local v26    # "s$iv$iv":Lokio/Segment;
    .restart local v2    # "$i$f$commonIndexOf":I
    .restart local v7    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v12    # "$i$f$seek":I
    .restart local v13    # "s$iv$iv":Lokio/Segment;
    :cond_9
    move/from16 v19, v2

    move-object/from16 v22, v7

    move/from16 v25, v12

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v7    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v12    # "$i$f$seek":I
    .restart local v19    # "$i$f$commonIndexOf":I
    .restart local v22    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    const-wide/16 v7, 0x0

    .line 1898
    .local v7, "offset$iv$iv":J
    :goto_5
    nop

    .line 1899
    iget v2, v13, Lokio/Segment;->limit:I

    iget v9, v13, Lokio/Segment;->pos:I

    sub-int/2addr v2, v9

    int-to-long v14, v2

    add-long/2addr v14, v7

    .line 1900
    .local v14, "nextOffset$iv$iv":J
    cmp-long v2, v14, v10

    if-lez v2, :cond_e

    .line 1904
    .end local v14    # "nextOffset$iv$iv":J
    move-object v2, v13

    .local v2, "s$iv":Lokio/Segment;
    move-wide v14, v7

    .local v14, "offset$iv":J
    const/4 v9, 0x0

    .line 1865
    .restart local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    if-eqz v2, :cond_d

    move-object v12, v2

    .line 1866
    .local v12, "s$iv":Lokio/Segment;
    move-wide/from16 v17, v14

    .line 1869
    .restart local v17    # "offset$iv":J
    :goto_6
    cmp-long v20, v17, v5

    if-gez v20, :cond_c

    .line 1870
    move-object/from16 v20, v2

    .end local v2    # "s$iv":Lokio/Segment;
    .local v20, "s$iv":Lokio/Segment;
    iget-object v2, v12, Lokio/Segment;->data:[B

    .line 1871
    .local v2, "data$iv":[B
    move-wide/from16 v23, v7

    .end local v7    # "offset$iv$iv":J
    .local v23, "offset$iv$iv":J
    iget v7, v12, Lokio/Segment;->limit:I

    int-to-long v7, v7

    move/from16 v21, v9

    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .local v21, "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    iget v9, v12, Lokio/Segment;->pos:I

    move-wide/from16 v26, v10

    .end local v10    # "fromIndex$iv$iv":J
    .local v26, "fromIndex$iv$iv":J
    int-to-long v9, v9

    add-long/2addr v9, v5

    sub-long v9, v9, v17

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    .line 1872
    .local v7, "limit$iv":I
    iget v8, v12, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, v3

    sub-long v8, v8, v17

    long-to-int v8, v8

    .line 1873
    .local v8, "pos$iv":I
    :goto_7
    if-ge v8, v7, :cond_b

    .line 1874
    aget-byte v9, v2, v8

    if-ne v9, v0, :cond_a

    .line 1875
    iget v9, v12, Lokio/Segment;->pos:I

    sub-int v9, v8, v9

    int-to-long v9, v9

    add-long v9, v9, v17

    move-wide v8, v9

    goto :goto_8

    .line 1877
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 1873
    goto :goto_7

    .line 1881
    :cond_b
    iget v9, v12, Lokio/Segment;->limit:I

    iget v10, v12, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    add-long v17, v17, v9

    .line 1882
    move-wide/from16 v3, v17

    .line 1883
    iget-object v9, v12, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v12, v9

    .line 1869
    .end local v2    # "data$iv":[B
    .end local v7    # "limit$iv":I
    .end local v8    # "pos$iv":I
    move-object/from16 v2, v20

    move/from16 v9, v21

    move-wide/from16 v7, v23

    move-wide/from16 v10, v26

    goto :goto_6

    .line 1886
    .end local v20    # "s$iv":Lokio/Segment;
    .end local v21    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v23    # "offset$iv$iv":J
    .end local v26    # "fromIndex$iv$iv":J
    .local v2, "s$iv":Lokio/Segment;
    .local v7, "offset$iv$iv":J
    .restart local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v10    # "fromIndex$iv$iv":J
    :cond_c
    move-object/from16 v20, v2

    move-wide/from16 v23, v7

    move/from16 v21, v9

    move-wide/from16 v26, v10

    .end local v2    # "s$iv":Lokio/Segment;
    .end local v7    # "offset$iv$iv":J
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v10    # "fromIndex$iv$iv":J
    .restart local v20    # "s$iv":Lokio/Segment;
    .restart local v21    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v23    # "offset$iv$iv":J
    .restart local v26    # "fromIndex$iv$iv":J
    const-wide/16 v8, -0x1

    goto :goto_8

    .line 1865
    .end local v12    # "s$iv":Lokio/Segment;
    .end local v17    # "offset$iv":J
    .end local v20    # "s$iv":Lokio/Segment;
    .end local v21    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v23    # "offset$iv$iv":J
    .end local v26    # "fromIndex$iv$iv":J
    .restart local v2    # "s$iv":Lokio/Segment;
    .restart local v7    # "offset$iv$iv":J
    .restart local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v10    # "fromIndex$iv$iv":J
    :cond_d
    move-object/from16 v20, v2

    move-wide/from16 v23, v7

    move/from16 v21, v9

    move-wide/from16 v26, v10

    .end local v2    # "s$iv":Lokio/Segment;
    .end local v7    # "offset$iv$iv":J
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v10    # "fromIndex$iv$iv":J
    .restart local v20    # "s$iv":Lokio/Segment;
    .restart local v21    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v23    # "offset$iv$iv":J
    .restart local v26    # "fromIndex$iv$iv":J
    const-wide/16 v8, -0x1

    goto :goto_8

    .line 1901
    .end local v20    # "s$iv":Lokio/Segment;
    .end local v21    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v23    # "offset$iv$iv":J
    .end local v26    # "fromIndex$iv$iv":J
    .restart local v7    # "offset$iv$iv":J
    .restart local v10    # "fromIndex$iv$iv":J
    .local v14, "nextOffset$iv$iv":J
    :cond_e
    move-wide/from16 v23, v7

    move-wide/from16 v26, v10

    .end local v7    # "offset$iv$iv":J
    .end local v10    # "fromIndex$iv$iv":J
    .restart local v23    # "offset$iv$iv":J
    .restart local v26    # "fromIndex$iv$iv":J
    iget-object v2, v13, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v2

    .line 1902
    move-wide v7, v14

    .line 1898
    .end local v14    # "nextOffset$iv$iv":J
    .end local v23    # "offset$iv$iv":J
    .restart local v7    # "offset$iv$iv":J
    goto/16 :goto_5

    .line 1864
    .end local v13    # "s$iv$iv":Lokio/Segment;
    .end local v19    # "$i$f$commonIndexOf":I
    .end local v22    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .end local v26    # "fromIndex$iv$iv":J
    .local v2, "$i$f$commonIndexOf":I
    .local v7, "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v10    # "fromIndex$iv$iv":J
    .local v12, "$i$f$seek":I
    :cond_f
    move/from16 v19, v2

    move-object/from16 v22, v7

    move-wide/from16 v26, v10

    move/from16 v25, v12

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v7    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "fromIndex$iv$iv":J
    .end local v12    # "$i$f$seek":I
    .restart local v19    # "$i$f$commonIndexOf":I
    .restart local v22    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    .restart local v26    # "fromIndex$iv$iv":J
    const-wide/16 v7, -0x1

    .local v7, "offset$iv":J
    const/4 v2, 0x0

    check-cast v2, Lokio/Segment;

    .local v2, "s$iv":Lokio/Segment;
    const/4 v9, 0x0

    .line 1865
    .restart local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    const-wide/16 v8, -0x1

    .line 466
    .end local v1    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "toIndex$iv":J
    .end local v7    # "offset$iv":J
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v19    # "$i$f$commonIndexOf":I
    .end local v22    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .end local v26    # "fromIndex$iv$iv":J
    :goto_8
    return-wide v8

    .line 1859
    .restart local v1    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOf":I
    .restart local v3    # "fromIndex$iv":J
    .restart local v5    # "toIndex$iv":J
    :cond_10
    move/from16 v19, v2

    .end local v2    # "$i$f$commonIndexOf":I
    .restart local v19    # "$i$f$commonIndexOf":I
    const/4 v2, 0x0

    .line 1858
    .local v2, "$i$a$-require-BufferKt$commonIndexOf$1$iv":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fromIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " toIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-BufferKt$commonIndexOf$1$iv":I
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 32
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1905
    .local v2, "$i$f$commonIndexOf":I
    move-wide/from16 v3, p2

    .line 1906
    .local v3, "fromIndex$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-eqz v5, :cond_10

    .line 1908
    const-wide/16 v8, 0x0

    cmp-long v5, v3, v8

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_f

    .line 1910
    move-wide v8, v3

    .local v8, "fromIndex$iv$iv":J
    move-object v5, v0

    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1911
    .local v10, "$i$f$seek":I
    iget-object v11, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v11, :cond_e

    .line 1938
    nop

    .line 1939
    .local v11, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v8

    cmp-long v14, v14, v8

    if-gez v14, :cond_7

    .line 1941
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v17

    .line 1942
    .local v17, "offset$iv$iv":J
    :goto_2
    cmp-long v14, v17, v8

    if-lez v14, :cond_2

    .line 1943
    iget-object v14, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v14

    .line 1944
    iget v14, v11, Lokio/Segment;->limit:I

    iget v12, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v12

    int-to-long v12, v14

    sub-long v17, v17, v12

    .line 1942
    goto :goto_2

    .line 1946
    :cond_2
    move-object v12, v11

    .local v12, "s$iv":Lokio/Segment;
    move-wide/from16 v13, v17

    .local v13, "offset$iv":J
    const/16 v19, 0x0

    .line 1912
    .local v19, "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    if-eqz v12, :cond_6

    move-object/from16 v20, v12

    .line 1913
    .local v20, "s$iv":Lokio/Segment;
    move-wide/from16 v21, v13

    .line 1917
    .local v21, "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v7

    .line 1918
    .local v7, "targetByteArray$iv":[B
    aget-byte v6, v7, v6

    .line 1919
    .local v6, "b0$iv":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v15

    .line 1920
    .local v15, "bytesSize$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v26

    move/from16 v16, v2

    .end local v2    # "$i$f$commonIndexOf":I
    .local v16, "$i$f$commonIndexOf":I
    int-to-long v1, v15

    sub-long v26, v26, v1

    const-wide/16 v1, 0x1

    add-long v26, v26, v1

    move-object/from16 v1, v20

    .line 1921
    .end local v20    # "s$iv":Lokio/Segment;
    .local v1, "s$iv":Lokio/Segment;
    .local v26, "resultLimit$iv":J
    :goto_3
    cmp-long v2, v21, v26

    if-gez v2, :cond_5

    .line 1923
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1924
    .local v2, "data$iv":[B
    move-object/from16 v20, v5

    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .local v20, "$this$seek$iv$iv":Lokio/Buffer;
    iget v5, v1, Lokio/Segment;->limit:I

    move/from16 v28, v10

    .end local v10    # "$i$f$seek":I
    .local v5, "a$iv$iv":I
    .local v28, "$i$f$seek":I
    iget v10, v1, Lokio/Segment;->pos:I

    move-object/from16 v24, v11

    .end local v11    # "s$iv$iv":Lokio/Segment;
    .local v24, "s$iv$iv":Lokio/Segment;
    int-to-long v10, v10

    add-long v10, v10, v26

    sub-long v10, v10, v21

    .local v10, "b$iv$iv":J
    const/16 v25, 0x0

    .line 1925
    .local v25, "$i$f$minOf":I
    move-object/from16 v29, v12

    move-wide/from16 v30, v13

    .end local v12    # "s$iv":Lokio/Segment;
    .end local v13    # "offset$iv":J
    .local v29, "s$iv":Lokio/Segment;
    .local v30, "offset$iv":J
    int-to-long v12, v5

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1924
    .end local v5    # "a$iv$iv":I
    .end local v10    # "b$iv$iv":J
    .end local v25    # "$i$f$minOf":I
    long-to-int v5, v12

    .line 1926
    .local v5, "segmentLimit$iv":I
    iget v10, v1, Lokio/Segment;->pos:I

    int-to-long v10, v10

    add-long/2addr v10, v3

    sub-long v10, v10, v21

    long-to-int v10, v10

    :goto_4
    if-ge v10, v5, :cond_4

    .line 1927
    .local v10, "pos$iv":I
    aget-byte v11, v2, v10

    if-ne v11, v6, :cond_3

    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x1

    invoke-static {v1, v11, v7, v12, v15}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1928
    iget v11, v1, Lokio/Segment;->pos:I

    sub-int v11, v10, v11

    int-to-long v11, v11

    add-long v12, v11, v21

    goto/16 :goto_9

    .line 1926
    :cond_3
    nop

    .end local v10    # "pos$iv":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1933
    :cond_4
    iget v10, v1, Lokio/Segment;->limit:I

    iget v11, v1, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    add-long v21, v21, v10

    .line 1934
    move-wide/from16 v3, v21

    .line 1935
    iget-object v10, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v10

    .line 1921
    .end local v2    # "data$iv":[B
    .end local v5    # "segmentLimit$iv":I
    move-object/from16 v5, v20

    move-object/from16 v11, v24

    move/from16 v10, v28

    move-object/from16 v12, v29

    move-wide/from16 v13, v30

    goto :goto_3

    .line 1938
    .end local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v24    # "s$iv$iv":Lokio/Segment;
    .end local v28    # "$i$f$seek":I
    .end local v29    # "s$iv":Lokio/Segment;
    .end local v30    # "offset$iv":J
    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    .local v10, "$i$f$seek":I
    .restart local v11    # "s$iv$iv":Lokio/Segment;
    .restart local v12    # "s$iv":Lokio/Segment;
    .restart local v13    # "offset$iv":J
    :cond_5
    move-object/from16 v20, v5

    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v29, v12

    move-wide/from16 v30, v13

    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v12    # "s$iv":Lokio/Segment;
    .end local v13    # "offset$iv":J
    .restart local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v24    # "s$iv$iv":Lokio/Segment;
    .restart local v28    # "$i$f$seek":I
    .restart local v29    # "s$iv":Lokio/Segment;
    .restart local v30    # "offset$iv":J
    const-wide/16 v12, -0x1

    goto/16 :goto_9

    .line 1912
    .end local v1    # "s$iv":Lokio/Segment;
    .end local v6    # "b0$iv":B
    .end local v7    # "targetByteArray$iv":[B
    .end local v15    # "bytesSize$iv":I
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v21    # "offset$iv":J
    .end local v24    # "s$iv$iv":Lokio/Segment;
    .end local v26    # "resultLimit$iv":J
    .end local v28    # "$i$f$seek":I
    .end local v29    # "s$iv":Lokio/Segment;
    .end local v30    # "offset$iv":J
    .local v2, "$i$f$commonIndexOf":I
    .restart local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v10    # "$i$f$seek":I
    .restart local v11    # "s$iv$iv":Lokio/Segment;
    .restart local v12    # "s$iv":Lokio/Segment;
    .restart local v13    # "offset$iv":J
    :cond_6
    move/from16 v16, v2

    move-object/from16 v20, v5

    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v29, v12

    move-wide/from16 v30, v13

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v12    # "s$iv":Lokio/Segment;
    .end local v13    # "offset$iv":J
    .restart local v16    # "$i$f$commonIndexOf":I
    .restart local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v24    # "s$iv$iv":Lokio/Segment;
    .restart local v28    # "$i$f$seek":I
    .restart local v29    # "s$iv":Lokio/Segment;
    .restart local v30    # "offset$iv":J
    const-wide/16 v12, -0x1

    goto/16 :goto_9

    .line 1949
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v17    # "offset$iv$iv":J
    .end local v19    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v24    # "s$iv$iv":Lokio/Segment;
    .end local v28    # "$i$f$seek":I
    .end local v29    # "s$iv":Lokio/Segment;
    .end local v30    # "offset$iv":J
    .restart local v2    # "$i$f$commonIndexOf":I
    .restart local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v10    # "$i$f$seek":I
    .restart local v11    # "s$iv$iv":Lokio/Segment;
    :cond_7
    move/from16 v16, v2

    move-object/from16 v20, v5

    move/from16 v28, v10

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .restart local v16    # "$i$f$commonIndexOf":I
    .restart local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v28    # "$i$f$seek":I
    const-wide/16 v1, 0x0

    .line 1950
    .local v1, "offset$iv$iv":J
    :goto_5
    nop

    .line 1951
    iget v5, v11, Lokio/Segment;->limit:I

    iget v7, v11, Lokio/Segment;->pos:I

    sub-int/2addr v5, v7

    int-to-long v12, v5

    add-long/2addr v12, v1

    .line 1952
    .local v12, "nextOffset$iv$iv":J
    cmp-long v5, v12, v8

    if-lez v5, :cond_d

    .line 1956
    .end local v12    # "nextOffset$iv$iv":J
    move-object v5, v11

    .local v5, "s$iv":Lokio/Segment;
    move-wide v12, v1

    .local v12, "offset$iv":J
    const/4 v7, 0x0

    .line 1912
    .local v7, "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    if-eqz v5, :cond_c

    move-object v10, v5

    .line 1913
    .local v10, "s$iv":Lokio/Segment;
    move-wide v14, v12

    .line 1917
    .local v14, "offset$iv":J
    move-wide/from16 v17, v1

    .end local v1    # "offset$iv$iv":J
    .restart local v17    # "offset$iv$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v1

    .line 1918
    .local v1, "targetByteArray$iv":[B
    aget-byte v2, v1, v6

    .line 1919
    .local v2, "b0$iv":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v6

    .line 1920
    .local v6, "bytesSize$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v21

    move-wide/from16 v26, v8

    move v9, v7

    .end local v7    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v8    # "fromIndex$iv$iv":J
    .local v9, "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .local v26, "fromIndex$iv$iv":J
    int-to-long v7, v6

    sub-long v21, v21, v7

    const-wide/16 v7, 0x1

    add-long v21, v21, v7

    .line 1921
    .local v21, "resultLimit$iv":J
    :goto_6
    cmp-long v7, v14, v21

    if-gez v7, :cond_b

    .line 1923
    iget-object v7, v10, Lokio/Segment;->data:[B

    .line 1924
    .local v7, "data$iv":[B
    iget v8, v10, Lokio/Segment;->limit:I

    move-object/from16 v19, v0

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v8, "a$iv$iv":I
    .local v19, "$this$commonIndexOf$iv":Lokio/Buffer;
    iget v0, v10, Lokio/Segment;->pos:I

    move-wide/from16 v24, v12

    .end local v12    # "offset$iv":J
    .local v24, "offset$iv":J
    int-to-long v12, v0

    add-long v12, v12, v21

    sub-long/2addr v12, v14

    .local v12, "b$iv$iv":J
    const/4 v0, 0x0

    .line 1925
    .local v0, "$i$f$minOf":I
    move/from16 v30, v0

    move-object/from16 v29, v1

    .end local v0    # "$i$f$minOf":I
    .end local v1    # "targetByteArray$iv":[B
    .local v29, "targetByteArray$iv":[B
    .local v30, "$i$f$minOf":I
    int-to-long v0, v8

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1924
    .end local v8    # "a$iv$iv":I
    .end local v12    # "b$iv$iv":J
    .end local v30    # "$i$f$minOf":I
    long-to-int v0, v0

    .line 1926
    .local v0, "segmentLimit$iv":I
    iget v1, v10, Lokio/Segment;->pos:I

    int-to-long v12, v1

    add-long/2addr v12, v3

    sub-long/2addr v12, v14

    long-to-int v1, v12

    :goto_7
    if-ge v1, v0, :cond_a

    .line 1927
    .local v1, "pos$iv":I
    aget-byte v8, v7, v1

    if-ne v8, v2, :cond_9

    add-int/lit8 v8, v1, 0x1

    move-object/from16 v12, v29

    const/4 v13, 0x1

    .end local v29    # "targetByteArray$iv":[B
    .local v12, "targetByteArray$iv":[B
    invoke-static {v10, v8, v12, v13, v6}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1928
    iget v8, v10, Lokio/Segment;->pos:I

    sub-int v8, v1, v8

    move/from16 v23, v2

    move-wide/from16 v29, v3

    .end local v2    # "b0$iv":B
    .end local v3    # "fromIndex$iv":J
    .local v23, "b0$iv":B
    .local v29, "fromIndex$iv":J
    int-to-long v2, v8

    add-long/2addr v2, v14

    move-wide v12, v2

    goto/16 :goto_9

    .line 1927
    .end local v23    # "b0$iv":B
    .end local v29    # "fromIndex$iv":J
    .restart local v2    # "b0$iv":B
    .restart local v3    # "fromIndex$iv":J
    :cond_8
    move/from16 v23, v2

    move-wide/from16 v29, v3

    .end local v2    # "b0$iv":B
    .end local v3    # "fromIndex$iv":J
    .restart local v23    # "b0$iv":B
    .restart local v29    # "fromIndex$iv":J
    goto :goto_8

    .end local v12    # "targetByteArray$iv":[B
    .end local v23    # "b0$iv":B
    .restart local v2    # "b0$iv":B
    .restart local v3    # "fromIndex$iv":J
    .local v29, "targetByteArray$iv":[B
    :cond_9
    move/from16 v23, v2

    move-object/from16 v12, v29

    const/4 v13, 0x1

    move-wide/from16 v29, v3

    .line 1926
    .end local v2    # "b0$iv":B
    .end local v3    # "fromIndex$iv":J
    .restart local v12    # "targetByteArray$iv":[B
    .restart local v23    # "b0$iv":B
    .local v29, "fromIndex$iv":J
    :goto_8
    nop

    .end local v1    # "pos$iv":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v23

    move-wide/from16 v3, v29

    move-object/from16 v29, v12

    goto :goto_7

    .line 1933
    .end local v12    # "targetByteArray$iv":[B
    .end local v23    # "b0$iv":B
    .restart local v2    # "b0$iv":B
    .restart local v3    # "fromIndex$iv":J
    .local v29, "targetByteArray$iv":[B
    :cond_a
    move/from16 v23, v2

    move-object/from16 v12, v29

    const/4 v13, 0x1

    move-wide/from16 v29, v3

    .end local v2    # "b0$iv":B
    .end local v3    # "fromIndex$iv":J
    .restart local v12    # "targetByteArray$iv":[B
    .restart local v23    # "b0$iv":B
    .local v29, "fromIndex$iv":J
    iget v1, v10, Lokio/Segment;->limit:I

    iget v2, v10, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v14, v1

    .line 1934
    move-wide v3, v14

    .line 1935
    .end local v29    # "fromIndex$iv":J
    .restart local v3    # "fromIndex$iv":J
    iget-object v1, v10, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v1

    .line 1921
    .end local v0    # "segmentLimit$iv":I
    .end local v7    # "data$iv":[B
    move-object v1, v12

    move-object/from16 v0, v19

    move/from16 v2, v23

    move-wide/from16 v12, v24

    goto :goto_6

    .line 1938
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v23    # "b0$iv":B
    .end local v24    # "offset$iv":J
    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v1, "targetByteArray$iv":[B
    .restart local v2    # "b0$iv":B
    .local v12, "offset$iv":J
    :cond_b
    move-object/from16 v19, v0

    move/from16 v23, v2

    move-wide/from16 v29, v3

    move-wide/from16 v24, v12

    move-object v12, v1

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v1    # "targetByteArray$iv":[B
    .end local v2    # "b0$iv":B
    .end local v3    # "fromIndex$iv":J
    .local v12, "targetByteArray$iv":[B
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v23    # "b0$iv":B
    .restart local v24    # "offset$iv":J
    .restart local v29    # "fromIndex$iv":J
    const-wide/16 v12, -0x1

    goto :goto_9

    .line 1912
    .end local v6    # "bytesSize$iv":I
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v10    # "s$iv":Lokio/Segment;
    .end local v14    # "offset$iv":J
    .end local v17    # "offset$iv$iv":J
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v21    # "resultLimit$iv":J
    .end local v23    # "b0$iv":B
    .end local v24    # "offset$iv":J
    .end local v26    # "fromIndex$iv$iv":J
    .end local v29    # "fromIndex$iv":J
    .restart local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v1, "offset$iv$iv":J
    .restart local v3    # "fromIndex$iv":J
    .local v7, "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .local v8, "fromIndex$iv$iv":J
    .local v12, "offset$iv":J
    :cond_c
    move-object/from16 v19, v0

    move-wide/from16 v17, v1

    move-wide/from16 v26, v8

    move-wide/from16 v24, v12

    move v9, v7

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v1    # "offset$iv$iv":J
    .end local v7    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v8    # "fromIndex$iv$iv":J
    .end local v12    # "offset$iv":J
    .restart local v9    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .restart local v17    # "offset$iv$iv":J
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v24    # "offset$iv":J
    .restart local v26    # "fromIndex$iv$iv":J
    const-wide/16 v12, -0x1

    goto :goto_9

    .line 1953
    .end local v5    # "s$iv":Lokio/Segment;
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v17    # "offset$iv$iv":J
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v24    # "offset$iv":J
    .end local v26    # "fromIndex$iv$iv":J
    .restart local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v1    # "offset$iv$iv":J
    .restart local v8    # "fromIndex$iv$iv":J
    .local v12, "nextOffset$iv$iv":J
    :cond_d
    move-object/from16 v19, v0

    move-wide/from16 v17, v1

    move-wide/from16 v26, v8

    const/4 v0, 0x1

    const-wide/16 v7, 0x1

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v1    # "offset$iv$iv":J
    .end local v8    # "fromIndex$iv$iv":J
    .restart local v17    # "offset$iv$iv":J
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v26    # "fromIndex$iv$iv":J
    iget-object v1, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v1

    .line 1954
    move-wide v1, v12

    .line 1950
    .end local v12    # "nextOffset$iv$iv":J
    .end local v17    # "offset$iv$iv":J
    .restart local v1    # "offset$iv$iv":J
    move-object/from16 v0, v19

    move-wide/from16 v8, v26

    goto/16 :goto_5

    .line 1911
    .end local v1    # "offset$iv$iv":J
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v26    # "fromIndex$iv$iv":J
    .end local v28    # "$i$f$seek":I
    .restart local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOf":I
    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v8    # "fromIndex$iv$iv":J
    .local v10, "$i$f$seek":I
    :cond_e
    move-object/from16 v19, v0

    move/from16 v16, v2

    move-object/from16 v20, v5

    move-wide/from16 v26, v8

    move/from16 v28, v10

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOf":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v8    # "fromIndex$iv$iv":J
    .end local v10    # "$i$f$seek":I
    .restart local v16    # "$i$f$commonIndexOf":I
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v26    # "fromIndex$iv$iv":J
    .restart local v28    # "$i$f$seek":I
    const-wide/16 v0, -0x1

    .local v0, "offset$iv":J
    const/4 v2, 0x0

    check-cast v2, Lokio/Segment;

    .local v2, "s$iv":Lokio/Segment;
    const/4 v5, 0x0

    .line 1912
    .local v5, "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    const-wide/16 v12, -0x1

    .line 472
    .end local v0    # "offset$iv":J
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v26    # "fromIndex$iv$iv":J
    .end local v28    # "$i$f$seek":I
    :goto_9
    return-wide v12

    .line 1907
    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOf":I
    .restart local v3    # "fromIndex$iv":J
    :cond_f
    move-object/from16 v19, v0

    move/from16 v16, v2

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOf":I
    .restart local v16    # "$i$f$commonIndexOf":I
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v0, 0x0

    .line 1908
    .local v0, "$i$a$-require-BufferKt$commonIndexOf$4$iv":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOf$4$iv":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1907
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v2    # "$i$f$commonIndexOf":I
    :cond_10
    move-object/from16 v19, v0

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v0, 0x0

    .line 1906
    .local v0, "$i$a$-require-BufferKt$commonIndexOf$3$iv":I
    nop

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOf$3$iv":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lokio/ByteString;

    const-string/jumbo v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 29
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    move-object/from16 v0, p1

    const-string/jumbo v1, "targetBytes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    move-object/from16 v1, p0

    .local v1, "$this$commonIndexOfElement$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1957
    .local v2, "$i$f$commonIndexOfElement":I
    move-wide/from16 v3, p2

    .line 1958
    .local v3, "fromIndex$iv":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-eqz v5, :cond_19

    .line 1960
    move-wide v8, v3

    .local v8, "fromIndex$iv$iv":J
    move-object v5, v1

    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1961
    .local v10, "$i$f$seek":I
    iget-object v11, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v11, :cond_18

    .line 2009
    nop

    .line 2011
    nop

    .line 2012
    .local v11, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v8

    cmp-long v14, v14, v8

    const/4 v15, 0x2

    if-gez v14, :cond_c

    .line 2014
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v16

    .line 2015
    .local v16, "offset$iv$iv":J
    :goto_1
    cmp-long v14, v16, v8

    if-lez v14, :cond_1

    .line 2016
    iget-object v14, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v14

    .line 2017
    iget v14, v11, Lokio/Segment;->limit:I

    iget v12, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v12

    int-to-long v12, v14

    sub-long v16, v16, v12

    .line 2015
    goto :goto_1

    .line 2019
    :cond_1
    move-object v12, v11

    .local v12, "s$iv":Lokio/Segment;
    move-wide/from16 v13, v16

    .local v13, "offset$iv":J
    const/16 v18, 0x0

    .line 1962
    .local v18, "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    if-eqz v12, :cond_b

    move-object/from16 v19, v12

    .line 1963
    .local v19, "s$iv":Lokio/Segment;
    move-wide/from16 v20, v13

    .line 1968
    .local v20, "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v15, :cond_6

    .line 1970
    invoke-virtual {v0, v6}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 1971
    .local v6, "b0$iv":B
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lokio/ByteString;->getByte(I)B

    move-result v7

    move-object/from16 v15, v19

    .line 1972
    .end local v19    # "s$iv":Lokio/Segment;
    .local v7, "b1$iv":B
    .local v15, "s$iv":Lokio/Segment;
    :goto_2
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_5

    .line 1973
    move/from16 v23, v2

    .end local v2    # "$i$f$commonIndexOfElement":I
    .local v23, "$i$f$commonIndexOfElement":I
    iget-object v2, v15, Lokio/Segment;->data:[B

    .line 1974
    .local v2, "data$iv":[B
    move-object/from16 v24, v5

    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .local v24, "$this$seek$iv$iv":Lokio/Buffer;
    iget v5, v15, Lokio/Segment;->pos:I

    move/from16 v25, v10

    move-object/from16 v22, v11

    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .local v22, "s$iv$iv":Lokio/Segment;
    .local v25, "$i$f$seek":I
    int-to-long v10, v5

    add-long/2addr v10, v3

    sub-long v10, v10, v20

    long-to-int v5, v10

    .line 1975
    .local v5, "pos$iv":I
    iget v10, v15, Lokio/Segment;->limit:I

    .line 1976
    .local v10, "limit$iv":I
    :goto_3
    if-ge v5, v10, :cond_4

    .line 1977
    aget-byte v11, v2, v5

    .line 1978
    .local v11, "b$iv":I
    if-eq v11, v6, :cond_3

    if-ne v11, v7, :cond_2

    goto :goto_4

    .line 1981
    :cond_2
    nop

    .end local v11    # "b$iv":I
    add-int/lit8 v5, v5, 0x1

    .line 1976
    goto :goto_3

    .line 1979
    .restart local v11    # "b$iv":I
    :cond_3
    :goto_4
    move-object/from16 v19, v2

    .end local v2    # "data$iv":[B
    .local v19, "data$iv":[B
    iget v2, v15, Lokio/Segment;->pos:I

    sub-int v2, v5, v2

    move-wide/from16 v26, v3

    .end local v3    # "fromIndex$iv":J
    .local v26, "fromIndex$iv":J
    int-to-long v2, v2

    add-long v2, v2, v20

    move-wide v12, v2

    goto/16 :goto_11

    .line 1985
    .end local v11    # "b$iv":I
    .end local v19    # "data$iv":[B
    .end local v26    # "fromIndex$iv":J
    .restart local v2    # "data$iv":[B
    .restart local v3    # "fromIndex$iv":J
    :cond_4
    move-object/from16 v19, v2

    move-wide/from16 v26, v3

    .end local v2    # "data$iv":[B
    .end local v3    # "fromIndex$iv":J
    .restart local v19    # "data$iv":[B
    .restart local v26    # "fromIndex$iv":J
    iget v2, v15, Lokio/Segment;->limit:I

    iget v3, v15, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v20, v20, v2

    .line 1986
    move-wide/from16 v3, v20

    .line 1987
    .end local v26    # "fromIndex$iv":J
    .restart local v3    # "fromIndex$iv":J
    iget-object v2, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v2

    .line 1972
    .end local v5    # "pos$iv":I
    .end local v10    # "limit$iv":I
    .end local v19    # "data$iv":[B
    move-object/from16 v11, v22

    move/from16 v2, v23

    move-object/from16 v5, v24

    move/from16 v10, v25

    goto :goto_2

    .end local v22    # "s$iv$iv":Lokio/Segment;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .local v2, "$i$f$commonIndexOfElement":I
    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    .local v10, "$i$f$seek":I
    .local v11, "s$iv$iv":Lokio/Segment;
    :cond_5
    move/from16 v23, v2

    move-wide/from16 v26, v3

    move-object/from16 v24, v5

    move/from16 v25, v10

    move-object/from16 v22, v11

    .end local v2    # "$i$f$commonIndexOfElement":I
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .restart local v22    # "s$iv$iv":Lokio/Segment;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    .restart local v26    # "fromIndex$iv":J
    goto/16 :goto_8

    .line 1991
    .end local v6    # "b0$iv":B
    .end local v7    # "b1$iv":B
    .end local v15    # "s$iv":Lokio/Segment;
    .end local v22    # "s$iv$iv":Lokio/Segment;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .end local v26    # "fromIndex$iv":J
    .restart local v2    # "$i$f$commonIndexOfElement":I
    .restart local v3    # "fromIndex$iv":J
    .restart local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v10    # "$i$f$seek":I
    .restart local v11    # "s$iv$iv":Lokio/Segment;
    .local v19, "s$iv":Lokio/Segment;
    :cond_6
    move/from16 v23, v2

    move-object/from16 v24, v5

    move/from16 v25, v10

    move-object/from16 v22, v11

    .end local v2    # "$i$f$commonIndexOfElement":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .restart local v22    # "s$iv$iv":Lokio/Segment;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v2

    move-object/from16 v5, v19

    .line 1992
    .end local v19    # "s$iv":Lokio/Segment;
    .local v2, "targetByteArray$iv":[B
    .local v5, "s$iv":Lokio/Segment;
    :goto_5
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v10

    cmp-long v7, v20, v10

    if-gez v7, :cond_a

    .line 1993
    iget-object v7, v5, Lokio/Segment;->data:[B

    .line 1994
    .local v7, "data$iv":[B
    iget v10, v5, Lokio/Segment;->pos:I

    int-to-long v10, v10

    add-long/2addr v10, v3

    sub-long v10, v10, v20

    long-to-int v10, v10

    .line 1995
    .local v10, "pos$iv":I
    iget v11, v5, Lokio/Segment;->limit:I

    .line 1996
    .local v11, "limit$iv":I
    :goto_6
    if-ge v10, v11, :cond_9

    .line 1997
    aget-byte v15, v7, v10

    .line 1998
    .local v15, "b$iv":I
    array-length v6, v2

    move-wide/from16 v26, v3

    const/4 v3, 0x0

    .end local v3    # "fromIndex$iv":J
    .restart local v26    # "fromIndex$iv":J
    :goto_7
    if-ge v3, v6, :cond_8

    aget-byte v4, v2, v3

    .line 1999
    .local v4, "t$iv":B
    if-ne v15, v4, :cond_7

    iget v3, v5, Lokio/Segment;->pos:I

    sub-int v3, v10, v3

    move-object/from16 v28, v2

    .end local v2    # "targetByteArray$iv":[B
    .local v28, "targetByteArray$iv":[B
    int-to-long v2, v3

    add-long v2, v2, v20

    move-wide v12, v2

    goto/16 :goto_11

    .line 1998
    .end local v28    # "targetByteArray$iv":[B
    .restart local v2    # "targetByteArray$iv":[B
    :cond_7
    move-object/from16 v28, v2

    .end local v2    # "targetByteArray$iv":[B
    .end local v4    # "t$iv":B
    .restart local v28    # "targetByteArray$iv":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2001
    .end local v28    # "targetByteArray$iv":[B
    .restart local v2    # "targetByteArray$iv":[B
    :cond_8
    move-object/from16 v28, v2

    .end local v2    # "targetByteArray$iv":[B
    .end local v15    # "b$iv":I
    .restart local v28    # "targetByteArray$iv":[B
    add-int/lit8 v10, v10, 0x1

    .line 1996
    move-wide/from16 v3, v26

    const/4 v6, 0x0

    goto :goto_6

    .line 2005
    .end local v26    # "fromIndex$iv":J
    .end local v28    # "targetByteArray$iv":[B
    .restart local v2    # "targetByteArray$iv":[B
    .restart local v3    # "fromIndex$iv":J
    :cond_9
    move-object/from16 v28, v2

    move-wide/from16 v26, v3

    .end local v2    # "targetByteArray$iv":[B
    .end local v3    # "fromIndex$iv":J
    .restart local v26    # "fromIndex$iv":J
    .restart local v28    # "targetByteArray$iv":[B
    iget v2, v5, Lokio/Segment;->limit:I

    iget v3, v5, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v20, v20, v2

    .line 2006
    move-wide/from16 v3, v20

    .line 2007
    .end local v26    # "fromIndex$iv":J
    .restart local v3    # "fromIndex$iv":J
    iget-object v2, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v2

    .line 1992
    .end local v7    # "data$iv":[B
    .end local v10    # "pos$iv":I
    .end local v11    # "limit$iv":I
    move-object/from16 v2, v28

    const/4 v6, 0x0

    goto :goto_5

    .end local v28    # "targetByteArray$iv":[B
    .restart local v2    # "targetByteArray$iv":[B
    :cond_a
    move-object/from16 v28, v2

    move-wide/from16 v26, v3

    .end local v2    # "targetByteArray$iv":[B
    .end local v3    # "fromIndex$iv":J
    .restart local v26    # "fromIndex$iv":J
    .restart local v28    # "targetByteArray$iv":[B
    move-object v15, v5

    .line 2009
    .end local v5    # "s$iv":Lokio/Segment;
    .end local v26    # "fromIndex$iv":J
    .end local v28    # "targetByteArray$iv":[B
    .restart local v3    # "fromIndex$iv":J
    .local v15, "s$iv":Lokio/Segment;
    :goto_8
    nop

    .line 2011
    const-wide/16 v12, -0x1

    goto/16 :goto_11

    .line 1962
    .end local v15    # "s$iv":Lokio/Segment;
    .end local v20    # "offset$iv":J
    .end local v22    # "s$iv$iv":Lokio/Segment;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .local v2, "$i$f$commonIndexOfElement":I
    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    .local v10, "$i$f$seek":I
    .local v11, "s$iv$iv":Lokio/Segment;
    :cond_b
    move/from16 v23, v2

    move-object/from16 v24, v5

    move/from16 v25, v10

    move-object/from16 v22, v11

    .end local v2    # "$i$f$commonIndexOfElement":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .restart local v22    # "s$iv$iv":Lokio/Segment;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    const-wide/16 v12, -0x1

    goto/16 :goto_11

    .line 2022
    .end local v12    # "s$iv":Lokio/Segment;
    .end local v13    # "offset$iv":J
    .end local v16    # "offset$iv$iv":J
    .end local v18    # "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    .end local v22    # "s$iv$iv":Lokio/Segment;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .restart local v2    # "$i$f$commonIndexOfElement":I
    .restart local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v10    # "$i$f$seek":I
    .restart local v11    # "s$iv$iv":Lokio/Segment;
    :cond_c
    move/from16 v23, v2

    move-object/from16 v24, v5

    move/from16 v25, v10

    .end local v2    # "$i$f$commonIndexOfElement":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    const-wide/16 v5, 0x0

    .line 2023
    .local v5, "offset$iv$iv":J
    :goto_9
    nop

    .line 2024
    iget v2, v11, Lokio/Segment;->limit:I

    iget v7, v11, Lokio/Segment;->pos:I

    sub-int/2addr v2, v7

    int-to-long v12, v2

    add-long/2addr v12, v5

    .line 2025
    .local v12, "nextOffset$iv$iv":J
    cmp-long v2, v12, v8

    if-lez v2, :cond_17

    .line 2029
    .end local v12    # "nextOffset$iv$iv":J
    move-object v2, v11

    .local v2, "s$iv":Lokio/Segment;
    move-wide v12, v5

    .local v12, "offset$iv":J
    const/4 v7, 0x0

    .line 1962
    .local v7, "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    if-eqz v2, :cond_16

    move-object v10, v2

    .line 1963
    .local v10, "s$iv":Lokio/Segment;
    move-wide/from16 v16, v12

    .line 1968
    .local v16, "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v14

    if-ne v14, v15, :cond_11

    .line 1970
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lokio/ByteString;->getByte(I)B

    move-result v14

    .line 1971
    .local v14, "b0$iv":B
    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lokio/ByteString;->getByte(I)B

    move-result v15

    .line 1972
    .local v15, "b1$iv":B
    :goto_a
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v18

    cmp-long v18, v16, v18

    if-gez v18, :cond_10

    .line 1973
    iget-object v0, v10, Lokio/Segment;->data:[B

    .line 1974
    .local v0, "data$iv":[B
    move-object/from16 v18, v2

    .end local v2    # "s$iv":Lokio/Segment;
    .local v18, "s$iv":Lokio/Segment;
    iget v2, v10, Lokio/Segment;->pos:I

    move-wide/from16 v19, v5

    .end local v5    # "offset$iv$iv":J
    .local v19, "offset$iv$iv":J
    int-to-long v5, v2

    add-long/2addr v5, v3

    sub-long v5, v5, v16

    long-to-int v2, v5

    .line 1975
    .local v2, "pos$iv":I
    iget v5, v10, Lokio/Segment;->limit:I

    .line 1976
    .local v5, "limit$iv":I
    :goto_b
    if-ge v2, v5, :cond_f

    .line 1977
    aget-byte v6, v0, v2

    .line 1978
    .local v6, "b$iv":I
    if-eq v6, v14, :cond_e

    if-ne v6, v15, :cond_d

    goto :goto_c

    .line 1981
    :cond_d
    nop

    .end local v6    # "b$iv":I
    add-int/lit8 v2, v2, 0x1

    .line 1976
    goto :goto_b

    .line 1979
    .restart local v6    # "b$iv":I
    :cond_e
    :goto_c
    move-object/from16 v21, v0

    .end local v0    # "data$iv":[B
    .local v21, "data$iv":[B
    iget v0, v10, Lokio/Segment;->pos:I

    sub-int v0, v2, v0

    move-wide/from16 v26, v3

    move v4, v2

    .end local v2    # "pos$iv":I
    .end local v3    # "fromIndex$iv":J
    .local v4, "pos$iv":I
    .restart local v26    # "fromIndex$iv":J
    int-to-long v2, v0

    add-long v2, v2, v16

    move-wide v12, v2

    goto/16 :goto_11

    .line 1985
    .end local v4    # "pos$iv":I
    .end local v6    # "b$iv":I
    .end local v21    # "data$iv":[B
    .end local v26    # "fromIndex$iv":J
    .restart local v0    # "data$iv":[B
    .restart local v2    # "pos$iv":I
    .restart local v3    # "fromIndex$iv":J
    :cond_f
    move-object/from16 v21, v0

    move-wide/from16 v26, v3

    move v4, v2

    .end local v0    # "data$iv":[B
    .end local v2    # "pos$iv":I
    .end local v3    # "fromIndex$iv":J
    .restart local v4    # "pos$iv":I
    .restart local v21    # "data$iv":[B
    .restart local v26    # "fromIndex$iv":J
    iget v0, v10, Lokio/Segment;->limit:I

    iget v2, v10, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long v16, v16, v2

    .line 1986
    move-wide/from16 v2, v16

    .line 1987
    .end local v26    # "fromIndex$iv":J
    .local v2, "fromIndex$iv":J
    iget-object v0, v10, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v0

    .line 1972
    .end local v4    # "pos$iv":I
    .end local v5    # "limit$iv":I
    .end local v21    # "data$iv":[B
    move-object/from16 v0, p1

    move-wide v3, v2

    move-object/from16 v2, v18

    move-wide/from16 v5, v19

    goto :goto_a

    .end local v18    # "s$iv":Lokio/Segment;
    .end local v19    # "offset$iv$iv":J
    .local v2, "s$iv":Lokio/Segment;
    .restart local v3    # "fromIndex$iv":J
    .local v5, "offset$iv$iv":J
    :cond_10
    move-object/from16 v18, v2

    move-wide/from16 v26, v3

    move-wide/from16 v19, v5

    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "offset$iv$iv":J
    .restart local v18    # "s$iv":Lokio/Segment;
    .restart local v19    # "offset$iv$iv":J
    .restart local v26    # "fromIndex$iv":J
    move-object/from16 v22, v1

    goto/16 :goto_10

    .line 1991
    .end local v14    # "b0$iv":B
    .end local v15    # "b1$iv":B
    .end local v18    # "s$iv":Lokio/Segment;
    .end local v19    # "offset$iv$iv":J
    .end local v26    # "fromIndex$iv":J
    .restart local v2    # "s$iv":Lokio/Segment;
    .restart local v3    # "fromIndex$iv":J
    .restart local v5    # "offset$iv$iv":J
    :cond_11
    move-object/from16 v18, v2

    move-wide/from16 v19, v5

    const/4 v14, 0x0

    .end local v2    # "s$iv":Lokio/Segment;
    .end local v5    # "offset$iv$iv":J
    .restart local v18    # "s$iv":Lokio/Segment;
    .restart local v19    # "offset$iv$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v0

    .line 1992
    .local v0, "targetByteArray$iv":[B
    :goto_d
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v2, v16, v5

    if-gez v2, :cond_15

    .line 1993
    iget-object v2, v10, Lokio/Segment;->data:[B

    .line 1994
    .local v2, "data$iv":[B
    iget v5, v10, Lokio/Segment;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    sub-long v5, v5, v16

    long-to-int v5, v5

    .line 1995
    .local v5, "pos$iv":I
    iget v6, v10, Lokio/Segment;->limit:I

    .line 1996
    .local v6, "limit$iv":I
    :goto_e
    if-ge v5, v6, :cond_14

    .line 1997
    aget-byte v15, v2, v5

    .line 1998
    .local v15, "b$iv":I
    array-length v14, v0

    move-object/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .local v22, "$this$commonIndexOfElement$iv":Lokio/Buffer;
    :goto_f
    if-ge v1, v14, :cond_13

    move-object/from16 v26, v2

    .end local v2    # "data$iv":[B
    .local v26, "data$iv":[B
    aget-byte v2, v0, v1

    .line 1999
    .local v2, "t$iv":B
    if-ne v15, v2, :cond_12

    iget v1, v10, Lokio/Segment;->pos:I

    sub-int v1, v5, v1

    move-object/from16 v27, v0

    .end local v0    # "targetByteArray$iv":[B
    .local v27, "targetByteArray$iv":[B
    int-to-long v0, v1

    add-long v0, v0, v16

    move-wide v12, v0

    goto/16 :goto_11

    .line 1998
    .end local v27    # "targetByteArray$iv":[B
    .restart local v0    # "targetByteArray$iv":[B
    :cond_12
    move-object/from16 v27, v0

    .end local v0    # "targetByteArray$iv":[B
    .end local v2    # "t$iv":B
    .restart local v27    # "targetByteArray$iv":[B
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v26

    goto :goto_f

    .line 2001
    .end local v26    # "data$iv":[B
    .end local v27    # "targetByteArray$iv":[B
    .restart local v0    # "targetByteArray$iv":[B
    .local v2, "data$iv":[B
    :cond_13
    move-object/from16 v27, v0

    move-object/from16 v26, v2

    .end local v0    # "targetByteArray$iv":[B
    .end local v2    # "data$iv":[B
    .end local v15    # "b$iv":I
    .restart local v26    # "data$iv":[B
    .restart local v27    # "targetByteArray$iv":[B
    add-int/lit8 v5, v5, 0x1

    .line 1996
    move-object/from16 v1, v22

    const/4 v14, 0x0

    goto :goto_e

    .line 2005
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v26    # "data$iv":[B
    .end local v27    # "targetByteArray$iv":[B
    .restart local v0    # "targetByteArray$iv":[B
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v2    # "data$iv":[B
    :cond_14
    move-object/from16 v27, v0

    move-object/from16 v22, v1

    move-object/from16 v26, v2

    .end local v0    # "targetByteArray$iv":[B
    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v2    # "data$iv":[B
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v26    # "data$iv":[B
    .restart local v27    # "targetByteArray$iv":[B
    iget v0, v10, Lokio/Segment;->limit:I

    iget v1, v10, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v16, v16, v0

    .line 2006
    move-wide/from16 v3, v16

    .line 2007
    iget-object v0, v10, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v0

    .line 1992
    .end local v5    # "pos$iv":I
    .end local v6    # "limit$iv":I
    .end local v26    # "data$iv":[B
    move-object/from16 v1, v22

    move-object/from16 v0, v27

    const/4 v14, 0x0

    goto :goto_d

    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v27    # "targetByteArray$iv":[B
    .restart local v0    # "targetByteArray$iv":[B
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    :cond_15
    move-object/from16 v27, v0

    move-object/from16 v22, v1

    .line 2009
    .end local v0    # "targetByteArray$iv":[B
    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    :goto_10
    nop

    .line 2011
    const-wide/16 v12, -0x1

    goto :goto_11

    .line 1962
    .end local v10    # "s$iv":Lokio/Segment;
    .end local v16    # "offset$iv":J
    .end local v18    # "s$iv":Lokio/Segment;
    .end local v19    # "offset$iv$iv":J
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .local v2, "s$iv":Lokio/Segment;
    .local v5, "offset$iv$iv":J
    :cond_16
    move-object/from16 v22, v1

    move-object/from16 v18, v2

    move-wide/from16 v19, v5

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v5    # "offset$iv$iv":J
    .restart local v18    # "s$iv":Lokio/Segment;
    .restart local v19    # "offset$iv$iv":J
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    const-wide/16 v12, -0x1

    goto :goto_11

    .line 2026
    .end local v7    # "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    .end local v18    # "s$iv":Lokio/Segment;
    .end local v19    # "offset$iv$iv":J
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v5    # "offset$iv$iv":J
    .local v12, "nextOffset$iv$iv":J
    :cond_17
    move-object/from16 v22, v1

    move-wide/from16 v19, v5

    const/4 v0, 0x1

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v5    # "offset$iv$iv":J
    .restart local v19    # "offset$iv$iv":J
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    iget-object v1, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v1

    .line 2027
    move-wide v5, v12

    .line 2023
    .end local v12    # "nextOffset$iv$iv":J
    .end local v19    # "offset$iv$iv":J
    .restart local v5    # "offset$iv$iv":J
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    goto/16 :goto_9

    .line 1961
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOfElement":I
    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    .local v10, "$i$f$seek":I
    :cond_18
    move-object/from16 v22, v1

    move/from16 v23, v2

    move-object/from16 v24, v5

    move/from16 v25, v10

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOfElement":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    const-wide/16 v0, -0x1

    .local v0, "offset$iv":J
    const/4 v2, 0x0

    check-cast v2, Lokio/Segment;

    .local v2, "s$iv":Lokio/Segment;
    const/4 v5, 0x0

    .line 1962
    .local v5, "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    const-wide/16 v12, -0x1

    .line 477
    .end local v0    # "offset$iv":J
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    .end local v8    # "fromIndex$iv$iv":J
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    :goto_11
    return-wide v12

    .line 1959
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOfElement":I
    .restart local v3    # "fromIndex$iv":J
    :cond_19
    move-object/from16 v22, v1

    move/from16 v23, v2

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOfElement":I
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    const/4 v0, 0x0

    .line 1958
    .local v0, "$i$a$-require-BufferKt$commonIndexOfElement$1$iv":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOfElement$1$iv":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 116
    new-instance v0, Lokio/Buffer$inputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 1

    .line 498
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 81
    new-instance v0, Lokio/Buffer$outputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$outputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 2

    .line 112
    new-instance v0, Lokio/PeekSource;

    move-object v1, p0

    check-cast v1, Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    check-cast v0, Lokio/Source;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    const/4 v5, 0x0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 8
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    move-object v0, p0

    .local v0, "$this$commonRangeEquals$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 2030
    .local v1, "$i$f$commonRangeEquals":I
    nop

    .line 2031
    nop

    .line 2032
    nop

    .line 2033
    nop

    .line 2034
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    .line 2033
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    sub-long/2addr v4, p1

    int-to-long v6, p5

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 2034
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    sub-int/2addr v2, p4

    if-ge v2, p5, :cond_0

    goto :goto_1

    .line 2037
    :cond_0
    move v2, v3

    :goto_0
    if-ge v2, p5, :cond_2

    .line 2038
    .local v2, "i$iv":I
    int-to-long v4, v2

    add-long/2addr v4, p1

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v4

    add-int v5, p4, v2

    invoke-virtual {p3, v5}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_1

    .line 2039
    goto :goto_2

    .line 2037
    :cond_1
    nop

    .end local v2    # "i$iv":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2042
    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 2035
    :cond_3
    :goto_1
    nop

    .line 487
    .end local v0    # "$this$commonRangeEquals$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRangeEquals":I
    :goto_2
    return v3
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_1

    .line 350
    .local v0, "s":Lokio/Segment;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 351
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 353
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 354
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 356
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 357
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 358
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 361
    :cond_0
    return v1

    .line 348
    .end local v0    # "s":Lokio/Segment;
    .end local v1    # "toCopy":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 4
    .param p1, "sink"    # [B

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    move-object v0, p0

    .local v0, "$this$commonRead$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1432
    .local v1, "$i$f$commonRead":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Lokio/Buffer;->read([BII)I

    move-result v0

    .line 338
    .end local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRead":I
    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    move-object v0, p0

    .local v0, "$this$commonRead$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1440
    .local v1, "$i$f$commonRead":I
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1442
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_1

    .line 1443
    .local v2, "s$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1444
    .local v3, "toCopy$iv":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    .line 1445
    iget v5, v2, Lokio/Segment;->pos:I

    iget v6, v2, Lokio/Segment;->pos:I

    add-int/2addr v6, v3

    .line 1444
    invoke-static {v4, p1, p2, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 1448
    iget v4, v2, Lokio/Segment;->pos:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->pos:I

    .line 1449
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 1451
    iget v4, v2, Lokio/Segment;->pos:I

    iget v5, v2, Lokio/Segment;->limit:I

    if-ne v4, v5, :cond_0

    .line 1452
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1453
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1456
    :cond_0
    goto :goto_0

    .line 1442
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "toCopy$iv":I
    :cond_1
    const/4 v3, -0x1

    .line 344
    .end local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRead":I
    :goto_0
    return v3
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    move-object v0, p0

    .local v0, "$this$commonRead$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1849
    .local v1, "$i$f$commonRead":I
    move-wide v2, p2

    .line 1850
    .local v2, "byteCount$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    .line 1852
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    const-wide/16 v4, -0x1

    goto :goto_1

    .line 1853
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 1854
    :cond_2
    invoke-virtual {p1, v0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1855
    move-wide v4, v2

    .line 456
    .end local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRead":I
    .end local v2    # "byteCount$iv":J
    :goto_1
    return-wide v4

    .line 1851
    .restart local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonRead":I
    .restart local v2    # "byteCount$iv":J
    :cond_3
    const/4 v4, 0x0

    .line 1850
    .local v4, "$i$a$-require-BufferKt$commonRead$1$iv":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$i$a$-require-BufferKt$commonRead$1$iv":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
.end method

.method public readAll(Lokio/Sink;)J
    .locals 6
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    move-object v0, p0

    .local v0, "$this$commonReadAll$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1327
    .local v1, "$i$f$commonReadAll":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 1328
    .local v2, "byteCount$iv":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 1329
    invoke-interface {p1, v0, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 1331
    :cond_0
    nop

    .line 288
    .end local v0    # "$this$commonReadAll$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadAll":I
    .end local v2    # "byteCount$iv":J
    return-wide v2
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/Buffer;->readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    const-string/jumbo v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 580
    move-object v0, p0

    check-cast v0, Lokio/Buffer;

    iput-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 581
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 582
    return-object p1

    .line 1054
    :cond_1
    const/4 v0, 0x0

    .line 578
    .local v0, "$i$a$-check-Buffer$readAndWriteUnsafe$1":I
    nop

    .end local v0    # "$i$a$-check-Buffer$readAndWriteUnsafe$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public readByte()B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 248
    move-object v0, p0

    .local v0, "$this$commonReadByte$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1066
    .local v1, "$i$f$commonReadByte":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1068
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1069
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 1070
    .local v3, "pos$iv":I
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1072
    .local v4, "limit$iv":I
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 1073
    .local v5, "data$iv":[B
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v6, "pos$iv":I
    aget-byte v3, v5, v3

    .line 1074
    .local v3, "b$iv":B
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->setSize$okio(J)V

    .line 1076
    if-ne v6, v4, :cond_0

    .line 1077
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1078
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 1080
    :cond_0
    iput v6, v2, Lokio/Segment;->pos:I

    .line 1081
    :goto_0
    nop

    .line 1083
    nop

    .line 248
    .end local v0    # "$this$commonReadByte$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByte":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "b$iv":B
    .end local v4    # "limit$iv":I
    .end local v5    # "data$iv":[B
    .end local v6    # "pos$iv":I
    return v3

    .line 1066
    .restart local v0    # "$this$commonReadByte$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadByte":I
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public readByteArray()[B
    .locals 4

    .line 333
    move-object v0, p0

    .local v0, "$this$commonReadByteArray$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1424
    .local v1, "$i$f$commonReadByteArray":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    .line 333
    .end local v0    # "$this$commonReadByteArray$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteArray":I
    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 336
    move-object v0, p0

    .local v0, "$this$commonReadByteArray$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1425
    .local v1, "$i$f$commonReadByteArray":I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 1427
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    .line 1429
    long-to-int v2, p1

    new-array v2, v2, [B

    .line 1430
    .local v2, "result$iv":[B
    invoke-virtual {v0, v2}, Lokio/Buffer;->readFully([B)V

    .line 1431
    nop

    .line 336
    .end local v0    # "$this$commonReadByteArray$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteArray":I
    .end local v2    # "result$iv":[B
    return-object v2

    .line 1427
    .restart local v0    # "$this$commonReadByteArray$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadByteArray":I
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 1426
    :cond_2
    const/4 v2, 0x0

    .line 1425
    .local v2, "$i$a$-require-BufferKt$commonReadByteArray$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-BufferKt$commonReadByteArray$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public readByteString()Lokio/ByteString;
    .locals 4

    .line 277
    move-object v0, p0

    .local v0, "$this$commonReadByteString$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1305
    .local v1, "$i$f$commonReadByteString":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 277
    .end local v0    # "$this$commonReadByteString$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteString":I
    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 280
    move-object v0, p0

    .local v0, "$this$commonReadByteString$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1306
    .local v1, "$i$f$commonReadByteString":I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1308
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_2

    .line 1310
    const/16 v2, 0x1000

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 1311
    long-to-int v2, p1

    invoke-virtual {v0, v2}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v2

    move-object v3, v2

    .line 1307
    .local v3, "it$iv":Lokio/ByteString;
    const/4 v4, 0x0

    .line 1311
    .local v4, "$i$a$-also-BufferKt$commonReadByteString$2$iv":I
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->skip(J)V

    .end local v3    # "it$iv":Lokio/ByteString;
    .end local v4    # "$i$a$-also-BufferKt$commonReadByteString$2$iv":I
    goto :goto_1

    .line 1313
    :cond_1
    new-instance v2, Lokio/ByteString;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    .line 280
    .end local v0    # "$this$commonReadByteString$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteString":I
    :goto_1
    return-object v2

    .line 1308
    .restart local v0    # "$this$commonReadByteString$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadByteString":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 1307
    :cond_3
    const/4 v2, 0x0

    .line 1306
    .local v2, "$i$a$-require-BufferKt$commonReadByteString$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-BufferKt$commonReadByteString$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public readDecimalLong()J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 272
    move-object/from16 v0, p0

    .local v0, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1194
    .local v1, "$i$f$commonReadDecimalLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 1197
    const-wide/16 v2, 0x0

    .line 1198
    .local v2, "value$iv":J
    const/4 v4, 0x0

    .line 1199
    .local v4, "seen$iv":I
    const/4 v5, 0x0

    .line 1200
    .local v5, "negative$iv":Z
    const/4 v6, 0x0

    .line 1202
    .local v6, "done$iv":Z
    const-wide/16 v7, -0x7

    .line 1204
    .local v7, "overflowDigit$iv":J
    :goto_0
    nop

    .line 1205
    iget-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1207
    .local v9, "segment$iv":Lokio/Segment;
    iget-object v10, v9, Lokio/Segment;->data:[B

    .line 1208
    .local v10, "data$iv":[B
    iget v11, v9, Lokio/Segment;->pos:I

    .line 1209
    .local v11, "pos$iv":I
    iget v12, v9, Lokio/Segment;->limit:I

    .line 1211
    .local v12, "limit$iv":I
    :goto_1
    if-ge v11, v12, :cond_7

    .line 1212
    aget-byte v13, v10, v11

    .line 1213
    .local v13, "b$iv":B
    const/16 v14, 0x30

    int-to-byte v14, v14

    if-lt v13, v14, :cond_4

    const/16 v15, 0x39

    int-to-byte v15, v15

    if-gt v13, v15, :cond_4

    .line 1214
    sub-int/2addr v14, v13

    .line 1217
    .local v14, "digit$iv":I
    const-wide v15, -0xcccccccccccccccL

    cmp-long v17, v2, v15

    if-ltz v17, :cond_2

    cmp-long v15, v2, v15

    if-nez v15, :cond_0

    move-object v15, v0

    move/from16 v16, v1

    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .local v15, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .local v16, "$i$f$commonReadDecimalLong":I
    int-to-long v0, v14

    cmp-long v0, v0, v7

    if-gez v0, :cond_1

    goto :goto_2

    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadDecimalLong":I
    .restart local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    :cond_0
    move-object v15, v0

    move/from16 v16, v1

    .line 1222
    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    :cond_1
    const-wide/16 v0, 0xa

    mul-long/2addr v2, v0

    .line 1223
    int-to-long v0, v14

    add-long/2addr v2, v0

    move/from16 v17, v6

    move-object/from16 v18, v10

    .end local v14    # "digit$iv":I
    goto :goto_3

    .line 1217
    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadDecimalLong":I
    .restart local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v14    # "digit$iv":I
    :cond_2
    move-object v15, v0

    move/from16 v16, v1

    .line 1218
    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    :goto_2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 1219
    .local v0, "buffer$iv":Lokio/Buffer;
    if-nez v5, :cond_3

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 1220
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    move/from16 v17, v6

    .end local v6    # "done$iv":Z
    .local v17, "done$iv":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v10

    .end local v10    # "data$iv":[B
    .local v18, "data$iv":[B
    const-string v10, "Number too large: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1213
    .end local v14    # "digit$iv":I
    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadDecimalLong":I
    .end local v17    # "done$iv":Z
    .end local v18    # "data$iv":[B
    .local v0, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v6    # "done$iv":Z
    .restart local v10    # "data$iv":[B
    :cond_4
    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v6

    move-object/from16 v18, v10

    .line 1224
    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v6    # "done$iv":Z
    .end local v10    # "data$iv":[B
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    .restart local v17    # "done$iv":Z
    .restart local v18    # "data$iv":[B
    const/16 v0, 0x2d

    int-to-byte v0, v0

    if-ne v13, v0, :cond_5

    if-nez v4, :cond_5

    .line 1225
    const/4 v5, 0x1

    .line 1226
    const-wide/16 v0, 0x1

    sub-long/2addr v7, v0

    .line 1236
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 1237
    nop

    .end local v13    # "b$iv":B
    add-int/lit8 v4, v4, 0x1

    .line 1211
    move-object v0, v15

    move/from16 v1, v16

    move/from16 v6, v17

    move-object/from16 v10, v18

    goto/16 :goto_1

    .line 1228
    .restart local v13    # "b$iv":B
    :cond_5
    if-eqz v4, :cond_6

    .line 1233
    const/4 v0, 0x1

    .line 1234
    .end local v17    # "done$iv":Z
    .local v0, "done$iv":Z
    move v6, v0

    goto :goto_4

    .line 1229
    .end local v0    # "done$iv":Z
    .restart local v17    # "done$iv":Z
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1229
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1211
    .end local v13    # "b$iv":B
    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadDecimalLong":I
    .end local v17    # "done$iv":Z
    .end local v18    # "data$iv":[B
    .local v0, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v6    # "done$iv":Z
    .restart local v10    # "data$iv":[B
    :cond_7
    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v6

    move-object/from16 v18, v10

    .line 1240
    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v10    # "data$iv":[B
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    .restart local v18    # "data$iv":[B
    :goto_4
    if-ne v11, v12, :cond_8

    .line 1241
    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    move-object v1, v15

    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .local v1, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1242
    invoke-static {v9}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5

    .line 1244
    .end local v1    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    :cond_8
    move-object v1, v15

    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    iput v11, v9, Lokio/Segment;->pos:I

    .line 1245
    :goto_5
    nop

    .line 1246
    if-nez v6, :cond_a

    iget-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    move-object v0, v1

    move/from16 v1, v16

    goto/16 :goto_0

    .line 1248
    .end local v9    # "segment$iv":Lokio/Segment;
    .end local v11    # "pos$iv":I
    .end local v12    # "limit$iv":I
    .end local v18    # "data$iv":[B
    :cond_a
    :goto_6
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v9

    int-to-long v11, v4

    sub-long/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 1249
    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    neg-long v9, v2

    move-wide v2, v9

    .line 272
    .end local v1    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v2    # "value$iv":J
    .end local v4    # "seen$iv":I
    .end local v5    # "negative$iv":Z
    .end local v6    # "done$iv":Z
    .end local v7    # "overflowDigit$iv":J
    .end local v16    # "$i$f$commonReadDecimalLong":I
    :goto_7
    return-wide v2

    .line 1194
    .restart local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .local v1, "$i$f$commonReadDecimalLong":I
    :cond_c
    move/from16 v16, v1

    move-object v1, v0

    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .local v1, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 212
    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 219
    invoke-direct {p0, p1, p2, p3, v1}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 220
    return-object p0

    .line 1054
    :cond_1
    const/4 v0, 0x0

    .line 218
    .local v0, "$i$a$-require-Buffer$readFrom$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$readFrom$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 4
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    move-object v0, p0

    .local v0, "$this$commonReadFully$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1321
    .local v1, "$i$f$commonReadFully":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_0

    .line 1325
    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1326
    nop

    .line 285
    .end local v0    # "$this$commonReadFully$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadFully":I
    return-void

    .line 1322
    .restart local v0    # "$this$commonReadFully$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadFully":I
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1323
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public readFully([B)V
    .locals 5
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    move-object v0, p0

    .local v0, "$this$commonReadFully$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1433
    .local v1, "$i$f$commonReadFully":I
    const/4 v2, 0x0

    .line 1434
    .local v2, "offset$iv":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1435
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-virtual {v0, p1, v2, v3}, Lokio/Buffer;->read([BII)I

    move-result v3

    .line 1436
    .local v3, "read$iv":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1437
    add-int/2addr v2, v3

    .line 1434
    .end local v3    # "read$iv":I
    goto :goto_0

    .line 1436
    .restart local v3    # "read$iv":I
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 1439
    .end local v3    # "read$iv":I
    :cond_1
    nop

    .line 341
    .end local v0    # "$this$commonReadFully$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadFully":I
    .end local v2    # "offset$iv":I
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 275
    move-object/from16 v0, p0

    .local v0, "$this$commonReadHexadecimalUnsignedLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1250
    .local v1, "$i$f$commonReadHexadecimalUnsignedLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 1252
    const-wide/16 v2, 0x0

    .line 1253
    .local v2, "value$iv":J
    const/4 v6, 0x0

    .line 1254
    .local v6, "seen$iv":I
    const/4 v7, 0x0

    .line 1256
    .local v7, "done$iv":Z
    :cond_0
    nop

    .line 1257
    iget-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1259
    .local v8, "segment$iv":Lokio/Segment;
    iget-object v9, v8, Lokio/Segment;->data:[B

    .line 1260
    .local v9, "data$iv":[B
    iget v10, v8, Lokio/Segment;->pos:I

    .line 1261
    .local v10, "pos$iv":I
    iget v11, v8, Lokio/Segment;->limit:I

    .line 1263
    .local v11, "limit$iv":I
    :goto_0
    if-ge v10, v11, :cond_6

    .line 1264
    const/4 v12, 0x0

    .line 1266
    .local v12, "digit$iv":I
    aget-byte v13, v9, v10

    .line 1267
    .local v13, "b$iv":B
    const/16 v14, 0x30

    int-to-byte v14, v14

    if-lt v13, v14, :cond_1

    const/16 v15, 0x39

    int-to-byte v15, v15

    if-gt v13, v15, :cond_1

    .line 1268
    sub-int v12, v13, v14

    goto :goto_1

    .line 1269
    :cond_1
    const/16 v14, 0x61

    int-to-byte v14, v14

    if-lt v13, v14, :cond_2

    const/16 v15, 0x66

    int-to-byte v15, v15

    if-gt v13, v15, :cond_2

    .line 1270
    sub-int v14, v13, v14

    add-int/lit8 v12, v14, 0xa

    goto :goto_1

    .line 1271
    :cond_2
    const/16 v14, 0x41

    int-to-byte v14, v14

    if-lt v13, v14, :cond_4

    const/16 v15, 0x46

    int-to-byte v15, v15

    if-gt v13, v15, :cond_4

    .line 1272
    sub-int v14, v13, v14

    add-int/lit8 v12, v14, 0xa

    .line 1284
    :goto_1
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v2

    cmp-long v14, v14, v4

    if-nez v14, :cond_3

    .line 1289
    const/4 v14, 0x4

    shl-long/2addr v2, v14

    .line 1290
    int-to-long v14, v12

    or-long/2addr v2, v14

    .line 1291
    add-int/lit8 v10, v10, 0x1

    .line 1292
    nop

    .end local v12    # "digit$iv":I
    .end local v13    # "b$iv":B
    add-int/lit8 v6, v6, 0x1

    .line 1263
    goto :goto_0

    .line 1285
    .restart local v12    # "digit$iv":I
    .restart local v13    # "b$iv":B
    :cond_3
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    .line 1286
    .local v4, "buffer$iv":Lokio/Buffer;
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Number too large: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 1274
    .end local v4    # "buffer$iv":Lokio/Buffer;
    :cond_4
    if-eqz v6, :cond_5

    .line 1279
    const/4 v7, 0x1

    .line 1280
    goto :goto_2

    .line 1275
    :cond_5
    new-instance v4, Ljava/lang/NumberFormatException;

    .line 1276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1275
    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 1295
    .end local v12    # "digit$iv":I
    .end local v13    # "b$iv":B
    :cond_6
    :goto_2
    if-ne v10, v11, :cond_7

    .line 1296
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v12

    iput-object v12, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1297
    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_3

    .line 1299
    :cond_7
    iput v10, v8, Lokio/Segment;->pos:I

    .line 1300
    :goto_3
    nop

    .line 1301
    if-nez v7, :cond_8

    iget-object v12, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v12, :cond_0

    .line 1303
    .end local v8    # "segment$iv":Lokio/Segment;
    .end local v9    # "data$iv":[B
    .end local v10    # "pos$iv":I
    .end local v11    # "limit$iv":I
    :cond_8
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v8, v6

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 1304
    nop

    .line 275
    .end local v0    # "$this$commonReadHexadecimalUnsignedLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .end local v2    # "value$iv":J
    .end local v6    # "seen$iv":I
    .end local v7    # "done$iv":Z
    return-wide v2

    .line 1250
    .restart local v0    # "$this$commonReadHexadecimalUnsignedLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    :cond_9
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public readInt()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 257
    move-object v0, p0

    .local v0, "$this$commonReadInt$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1131
    .local v1, "$i$f$commonReadInt":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 1133
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1134
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 1135
    .local v3, "pos$iv":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 1138
    .local v6, "limit$iv":I
    sub-int v7, v6, v3

    int-to-long v7, v7

    cmp-long v7, v7, v4

    if-gez v7, :cond_0

    .line 1139
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv$iv":B
    const/16 v5, 0xff

    .local v5, "other$iv$iv":I
    const/4 v7, 0x0

    .line 1140
    .local v7, "$i$f$and":I
    and-int/2addr v4, v5

    .line 1139
    .end local v4    # "$this$and$iv$iv":B
    .end local v5    # "other$iv$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x18

    .line 1141
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .local v5, "$this$and$iv$iv":B
    const/16 v7, 0xff

    .local v7, "other$iv$iv":I
    const/4 v8, 0x0

    .line 1140
    .local v8, "$i$f$and":I
    and-int/2addr v5, v7

    .line 1141
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    .line 1142
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .restart local v5    # "$this$and$iv$iv":B
    const/16 v7, 0xff

    .restart local v7    # "other$iv$iv":I
    const/4 v8, 0x0

    .line 1140
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 1142
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    .line 1143
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .restart local v5    # "$this$and$iv$iv":B
    const/16 v7, 0xff

    .restart local v7    # "other$iv$iv":I
    const/4 v8, 0x0

    .line 1140
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 1143
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    or-int/2addr v4, v5

    .line 1139
    goto :goto_1

    .line 1146
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 1147
    .local v7, "data$iv":[B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv$iv":I
    const/4 v10, 0x0

    .line 1140
    .local v10, "$i$f$and":I
    and-int/2addr v3, v9

    .line 1147
    .end local v3    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x18

    .line 1148
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .local v10, "other$iv$iv":I
    const/4 v11, 0x0

    .line 1140
    .local v11, "$i$f$and":I
    and-int/2addr v8, v10

    .line 1148
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v3, v8

    .line 1149
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .restart local v10    # "other$iv$iv":I
    const/4 v11, 0x0

    .line 1140
    .restart local v11    # "$i$f$and":I
    and-int/2addr v9, v10

    .line 1149
    .end local v9    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v3, v9

    .line 1150
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .restart local v10    # "other$iv$iv":I
    const/4 v11, 0x0

    .line 1140
    .restart local v11    # "$i$f$and":I
    and-int/2addr v8, v10

    .line 1150
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    or-int/2addr v3, v8

    .line 1147
    nop

    .line 1151
    .local v3, "i$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$okio(J)V

    .line 1153
    if-ne v9, v6, :cond_1

    .line 1154
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1155
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 1157
    :cond_1
    iput v9, v2, Lokio/Segment;->pos:I

    .line 1158
    :goto_0
    nop

    .line 1160
    move v4, v3

    .line 257
    .end local v0    # "$this$commonReadInt$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadInt":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "i$iv":I
    .end local v6    # "limit$iv":I
    .end local v7    # "data$iv":[B
    .end local v9    # "pos$iv":I
    :goto_1
    return v4

    .line 1131
    .restart local v0    # "$this$commonReadInt$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadInt":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public readIntLe()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 260
    move-object v0, p0

    .local v0, "$this$commonReadLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1161
    .local v1, "$i$f$commonReadLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 1163
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1164
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 1165
    .local v3, "pos$iv":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 1168
    .local v6, "limit$iv":I
    sub-int v7, v6, v3

    int-to-long v7, v7

    cmp-long v7, v7, v4

    const/16 v8, 0x20

    if-gez v7, :cond_0

    .line 1169
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v4

    .local v4, "$this$and$iv$iv":I
    const-wide v9, 0xffffffffL

    .local v9, "other$iv$iv":J
    const/4 v5, 0x0

    .line 1170
    .local v5, "$i$f$and":I
    int-to-long v11, v4

    and-long v4, v11, v9

    .line 1169
    .end local v4    # "$this$and$iv$iv":I
    .end local v5    # "$i$f$and":I
    .end local v9    # "other$iv$iv":J
    shl-long/2addr v4, v8

    .line 1171
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v7

    .local v7, "$this$and$iv$iv":I
    const-wide v8, 0xffffffffL

    .local v8, "other$iv$iv":J
    const/4 v10, 0x0

    .line 1170
    .local v10, "$i$f$and":I
    int-to-long v11, v7

    and-long v7, v11, v8

    .line 1171
    .end local v7    # "$this$and$iv$iv":I
    .end local v8    # "other$iv$iv":J
    .end local v10    # "$i$f$and":I
    or-long/2addr v4, v7

    .line 1169
    goto/16 :goto_1

    .line 1174
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 1175
    .local v7, "data$iv":[B
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const-wide/16 v10, 0xff

    .local v10, "other$iv$iv":J
    const/4 v12, 0x0

    .line 1176
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 1175
    .end local v3    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x38

    shl-long/2addr v10, v3

    .line 1177
    add-int/lit8 v3, v9, 0x1

    .end local v9    # "pos$iv":I
    .local v3, "pos$iv":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv$iv":B
    const-wide/16 v12, 0xff

    .local v12, "other$iv$iv":J
    const/4 v14, 0x0

    .line 1176
    .local v14, "$i$f$and":I
    int-to-long v4, v9

    and-long/2addr v4, v12

    .line 1177
    .end local v9    # "$this$and$iv$iv":B
    .end local v12    # "other$iv$iv":J
    .end local v14    # "$i$f$and":I
    const/16 v9, 0x30

    shl-long/2addr v4, v9

    or-long/2addr v4, v10

    .line 1178
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv$iv":J
    const/4 v12, 0x0

    .line 1176
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 1178
    .end local v3    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x28

    shl-long/2addr v10, v3

    or-long v3, v4, v10

    .line 1179
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "pos$iv":I
    .local v5, "pos$iv":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv$iv":J
    const/4 v12, 0x0

    .line 1176
    .restart local v12    # "$i$f$and":I
    int-to-long v13, v9

    and-long v9, v13, v10

    .line 1179
    .end local v9    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":J
    .end local v12    # "$i$f$and":I
    shl-long v8, v9, v8

    or-long/2addr v3, v8

    .line 1180
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v5, v7, v5

    .local v5, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .local v9, "other$iv$iv":J
    const/4 v11, 0x0

    .line 1176
    .local v11, "$i$f$and":I
    int-to-long v12, v5

    and-long/2addr v9, v12

    .line 1180
    .end local v5    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v5, 0x18

    shl-long/2addr v9, v5

    or-long/2addr v3, v9

    .line 1181
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v5, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv$iv":J
    const/4 v11, 0x0

    .line 1176
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long v8, v12, v9

    .line 1181
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v10, 0x10

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    .line 1182
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v5, v7, v5

    .local v5, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv$iv":J
    const/4 v11, 0x0

    .line 1176
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v5

    and-long/2addr v9, v12

    .line 1182
    .end local v5    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v5, 0x8

    shl-long/2addr v9, v5

    or-long/2addr v3, v9

    .line 1183
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v5, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv$iv":J
    const/4 v11, 0x0

    .line 1176
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long v8, v12, v9

    .line 1183
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    or-long/2addr v3, v8

    .line 1175
    nop

    .line 1184
    .local v3, "v$iv":J
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->setSize$okio(J)V

    .line 1186
    if-ne v5, v6, :cond_1

    .line 1187
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1188
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 1190
    :cond_1
    iput v5, v2, Lokio/Segment;->pos:I

    .line 1191
    :goto_0
    nop

    .line 1193
    move-wide v4, v3

    .line 260
    .end local v0    # "$this$commonReadLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadLong":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "v$iv":J
    .end local v5    # "pos$iv":I
    .end local v6    # "limit$iv":I
    .end local v7    # "data$iv":[B
    :goto_1
    return-wide v4

    .line 1161
    .restart local v0    # "$this$commonReadLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadLong":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 254
    move-object v0, p0

    .local v0, "$this$commonReadShort$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1106
    .local v1, "$i$f$commonReadShort":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 1108
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1109
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 1110
    .local v3, "pos$iv":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 1113
    .local v6, "limit$iv":I
    sub-int v7, v6, v3

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 1114
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv$iv":B
    const/16 v5, 0xff

    .local v5, "other$iv$iv":I
    const/4 v7, 0x0

    .line 1115
    .local v7, "$i$f$and":I
    and-int/2addr v4, v5

    .line 1114
    .end local v4    # "$this$and$iv$iv":B
    .end local v5    # "other$iv$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .local v5, "$this$and$iv$iv":B
    const/16 v7, 0xff

    .local v7, "other$iv$iv":I
    const/4 v8, 0x0

    .line 1115
    .local v8, "$i$f$and":I
    and-int/2addr v5, v7

    .line 1114
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    or-int/2addr v4, v5

    .line 1116
    .local v4, "s$iv":I
    int-to-short v5, v4

    goto :goto_1

    .line 1119
    .end local v4    # "s$iv":I
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 1120
    .local v7, "data$iv":[B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv$iv":I
    const/4 v10, 0x0

    .line 1115
    .local v10, "$i$f$and":I
    and-int/2addr v3, v9

    .line 1120
    .end local v3    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .local v10, "other$iv$iv":I
    const/4 v11, 0x0

    .line 1115
    .local v11, "$i$f$and":I
    and-int/2addr v8, v10

    .line 1120
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    or-int/2addr v3, v8

    .line 1121
    .local v3, "s$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$okio(J)V

    .line 1123
    if-ne v9, v6, :cond_1

    .line 1124
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1125
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 1127
    :cond_1
    iput v9, v2, Lokio/Segment;->pos:I

    .line 1128
    :goto_0
    nop

    .line 1130
    int-to-short v5, v3

    .line 254
    .end local v0    # "$this$commonReadShort$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadShort":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "s$iv":I
    .end local v6    # "limit$iv":I
    .end local v7    # "data$iv":[B
    .end local v9    # "pos$iv":I
    :goto_1
    return v5

    .line 1106
    .restart local v0    # "$this$commonReadShort$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadShort":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public readShortLe()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 300
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v2, p1

    if-ltz v2, :cond_4

    .line 301
    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 303
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 304
    .local v0, "s":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lokio/Segment;->limit:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 306
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2

    .line 309
    :cond_2
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v4

    .line 310
    .local v1, "result":Ljava/lang/String;
    iget v2, v0, Lokio/Segment;->pos:I

    long-to-int v3, p1

    add-int/2addr v2, v3

    iput v2, v0, Lokio/Segment;->pos:I

    .line 311
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 313
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_3

    .line 314
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 315
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 318
    :cond_3
    return-object v1

    .line 300
    .end local v0    # "s":Lokio/Segment;
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1054
    :cond_5
    const/4 v0, 0x0

    .line 299
    .local v0, "$i$a$-require-Buffer$readString$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$readString$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/Buffer;->readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 2
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    const-string/jumbo v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 571
    move-object v0, p0

    check-cast v0, Lokio/Buffer;

    iput-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 572
    iput-boolean v1, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 573
    return-object p1

    .line 1054
    :cond_1
    const/4 v0, 0x0

    .line 569
    .local v0, "$i$a$-check-Buffer$readUnsafe$1":I
    nop

    .end local v0    # "$i$a$-check-Buffer$readUnsafe$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .line 290
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 293
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 331
    move-object v0, p0

    .local v0, "$this$commonReadUtf8CodePoint$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1353
    .local v1, "$i$f$commonReadUtf8CodePoint":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 1355
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    .line 1356
    .local v2, "b0$iv":B
    const/4 v3, 0x0

    .line 1357
    .local v3, "codePoint$iv":I
    const/4 v4, 0x0

    .line 1358
    .local v4, "byteCount$iv":I
    const/4 v5, 0x0

    .line 1360
    .local v5, "min$iv":I
    nop

    .line 1361
    const/16 v6, 0x80

    .local v6, "other$iv$iv":I
    move v7, v2

    .local v7, "$this$and$iv$iv":B
    const/4 v8, 0x0

    .line 1362
    .local v8, "$i$f$and":I
    and-int/2addr v6, v7

    .end local v6    # "other$iv$iv":I
    .end local v7    # "$this$and$iv$iv":B
    .end local v8    # "$i$f$and":I
    const v7, 0xfffd

    if-nez v6, :cond_0

    .line 1363
    const/16 v6, 0x7f

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .local v8, "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1362
    .local v9, "$i$f$and":I
    and-int v3, v8, v6

    .line 1364
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/4 v4, 0x1

    .line 1365
    const/4 v5, 0x0

    goto :goto_0

    .line 1367
    :cond_0
    const/16 v6, 0xe0

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1362
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/16 v8, 0xc0

    if-ne v6, v8, :cond_1

    .line 1369
    const/16 v6, 0x1f

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1362
    .restart local v9    # "$i$f$and":I
    and-int v3, v8, v6

    .line 1370
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/4 v4, 0x2

    .line 1371
    const/16 v5, 0x80

    goto :goto_0

    .line 1373
    :cond_1
    const/16 v6, 0xf0

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1362
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/16 v8, 0xe0

    if-ne v6, v8, :cond_2

    .line 1375
    const/16 v6, 0xf

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1362
    .restart local v9    # "$i$f$and":I
    and-int v3, v8, v6

    .line 1376
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/4 v4, 0x3

    .line 1377
    const/16 v5, 0x800

    goto :goto_0

    .line 1379
    :cond_2
    const/16 v6, 0xf8

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1362
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/16 v8, 0xf0

    if-ne v6, v8, :cond_a

    .line 1381
    const/4 v6, 0x7

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1362
    .restart local v9    # "$i$f$and":I
    and-int v3, v8, v6

    .line 1382
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/4 v4, 0x4

    .line 1383
    const/high16 v5, 0x10000

    .line 1392
    :goto_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    int-to-long v10, v4

    cmp-long v6, v8, v10

    if-ltz v6, :cond_9

    .line 1399
    const/4 v6, 0x1

    :goto_1
    if-ge v6, v4, :cond_4

    .line 1400
    .local v6, "i$iv":I
    int-to-long v8, v6

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v8

    .line 1401
    .local v8, "b$iv":B
    const/16 v9, 0xc0

    .local v9, "other$iv$iv":I
    move v10, v8

    .local v10, "$this$and$iv$iv":B
    const/4 v11, 0x0

    .line 1362
    .local v11, "$i$f$and":I
    and-int/2addr v9, v10

    .line 1401
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$this$and$iv$iv":B
    .end local v11    # "$i$f$and":I
    const/16 v10, 0x80

    if-ne v9, v10, :cond_3

    .line 1403
    shl-int/lit8 v3, v3, 0x6

    .line 1404
    const/16 v9, 0x3f

    .restart local v9    # "other$iv$iv":I
    move v10, v8

    .restart local v10    # "$this$and$iv$iv":B
    const/4 v11, 0x0

    .line 1362
    .restart local v11    # "$i$f$and":I
    and-int/2addr v9, v10

    .line 1404
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$this$and$iv$iv":B
    .end local v11    # "$i$f$and":I
    or-int/2addr v3, v9

    .line 1399
    .end local v8    # "b$iv":B
    nop

    .end local v6    # "i$iv":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1406
    .restart local v6    # "i$iv":I
    .restart local v8    # "b$iv":B
    :cond_3
    int-to-long v9, v6

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->skip(J)V

    .line 1407
    goto :goto_3

    .line 1411
    .end local v6    # "i$iv":I
    .end local v8    # "b$iv":B
    :cond_4
    int-to-long v8, v4

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 1413
    nop

    .line 1414
    const v6, 0x10ffff

    if-le v3, v6, :cond_5

    .line 1415
    goto :goto_3

    .line 1417
    :cond_5
    const v6, 0xd800

    if-le v6, v3, :cond_6

    goto :goto_2

    :cond_6
    const v6, 0xdfff

    if-lt v6, v3, :cond_7

    .line 1418
    goto :goto_3

    .line 1420
    :cond_7
    :goto_2
    if-ge v3, v5, :cond_8

    .line 1421
    goto :goto_3

    .line 1423
    :cond_8
    nop

    .line 1413
    move v7, v3

    goto :goto_3

    .line 1393
    :cond_9
    new-instance v6, Ljava/io/EOFException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "size < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (to read code point prefixed 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 1387
    :cond_a
    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 1388
    nop

    .line 331
    .end local v0    # "$this$commonReadUtf8CodePoint$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadUtf8CodePoint":I
    .end local v2    # "b0$iv":B
    .end local v3    # "codePoint$iv":I
    .end local v4    # "byteCount$iv":I
    .end local v5    # "min$iv":I
    :goto_3
    return v7

    .line 1353
    .restart local v0    # "$this$commonReadUtf8CodePoint$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadUtf8CodePoint":I
    :cond_b
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 322
    move-object v0, p0

    .local v0, "$this$commonReadUtf8Line$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1332
    .local v1, "$i$f$commonReadUtf8Line":I
    const/16 v2, 0xa

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v2

    .line 1334
    .local v2, "newline$iv":J
    nop

    .line 1335
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {v0, v2, v3}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1336
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1337
    :cond_1
    nop

    .line 1334
    const/4 v4, 0x0

    .line 322
    .end local v0    # "$this$commonReadUtf8Line$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadUtf8Line":I
    .end local v2    # "newline$iv":J
    :goto_0
    return-object v4
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 325
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 16
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 328
    move-wide/from16 v0, p1

    move-object/from16 v8, p0

    .local v8, "$this$commonReadUtf8LineStrict$iv":Lokio/Buffer;
    const/4 v9, 0x0

    .line 1338
    .local v9, "$i$f$commonReadUtf8LineStrict":I
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 1340
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    const-wide/16 v10, 0x1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-long v2, v0, v10

    :goto_1
    move-wide v12, v2

    .line 1341
    .local v12, "scanLength$iv":J
    const/16 v2, 0xa

    int-to-byte v14, v2

    const-wide/16 v4, 0x0

    move-object v2, v8

    move v3, v14

    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v6

    .line 1342
    .local v6, "newline$iv":J
    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    invoke-static {v8, v6, v7}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1343
    :cond_2
    nop

    .line 1344
    nop

    .line 1345
    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-gez v2, :cond_3

    .line 1344
    sub-long v2, v12, v10

    invoke-virtual {v8, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_3

    .line 1345
    invoke-virtual {v8, v12, v13}, Lokio/Buffer;->getByte(J)B

    move-result v2

    if-ne v2, v14, :cond_3

    .line 1346
    invoke-static {v8, v12, v13}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v2

    .line 328
    .end local v6    # "newline$iv":J
    .end local v8    # "$this$commonReadUtf8LineStrict$iv":Lokio/Buffer;
    .end local v9    # "$i$f$commonReadUtf8LineStrict":I
    .end local v12    # "scanLength$iv":J
    :goto_2
    return-object v2

    .line 1348
    .restart local v6    # "newline$iv":J
    .restart local v8    # "$this$commonReadUtf8LineStrict$iv":Lokio/Buffer;
    .restart local v9    # "$i$f$commonReadUtf8LineStrict":I
    .restart local v12    # "scanLength$iv":J
    :cond_3
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 1349
    .local v3, "data$iv":Lokio/Buffer;
    const/16 v2, 0x20

    .local v2, "a$iv$iv":I
    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v4

    .local v4, "b$iv$iv":J
    const/4 v10, 0x0

    .line 1350
    .local v10, "$i$f$minOf":I
    int-to-long v14, v2

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 1349
    .end local v2    # "a$iv$iv":I
    .end local v4    # "b$iv$iv":J
    .end local v10    # "$i$f$minOf":I
    const-wide/16 v4, 0x0

    move-object v2, v8

    move-wide v10, v6

    .end local v6    # "newline$iv":J
    .local v10, "newline$iv":J
    move-wide v6, v14

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 1351
    new-instance v2, Ljava/io/EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\n not found: limit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v5

    .line 1352
    nop

    .line 1351
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " content="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1352
    invoke-virtual {v3}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2026

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1351
    invoke-direct {v2, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 1339
    .end local v3    # "data$iv":Lokio/Buffer;
    .end local v10    # "newline$iv":J
    .end local v12    # "scanLength$iv":J
    :cond_4
    const/4 v2, 0x0

    .line 1338
    .local v2, "$i$a$-require-BufferKt$commonReadUtf8LineStrict$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "limit < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-BufferKt$commonReadUtf8LineStrict$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public request(J)Z
    .locals 2
    .param p1, "byteCount"    # J

    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public require(J)V
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 106
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    .line 107
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public select(Lokio/Options;)I
    .locals 6
    .param p1, "options"    # Lokio/Options;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    move-object v0, p0

    .local v0, "$this$commonSelect$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1314
    .local v1, "$i$f$commonSelect":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, p1, v4, v2, v3}, Lokio/internal/BufferKt;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v2

    .line 1315
    .local v2, "index$iv":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    .line 1318
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$okio()[Lokio/ByteString;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    .line 1319
    .local v3, "selectedSize$iv":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 1320
    nop

    .line 282
    .end local v0    # "$this$commonSelect$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSelect":I
    .end local v2    # "index$iv":I
    .end local v3    # "selectedSize$iv":I
    :goto_0
    return v2
.end method

.method public final setSize$okio(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 73
    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-void
.end method

.method public final sha1()Lokio/ByteString;
    .locals 1

    .line 501
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 1

    .line 504
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 1

    .line 507
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 10
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 367
    move-object v0, p0

    .local v0, "$this$commonSkip$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1458
    .local v1, "$i$f$commonSkip":I
    move-wide v2, p1

    .line 1459
    .local v2, "byteCount$iv":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 1460
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_1

    .line 1462
    .local v4, "head$iv":Lokio/Segment;
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    .local v5, "b$iv$iv":I
    const/4 v6, 0x0

    .line 1463
    .local v6, "$i$f$minOf":I
    int-to-long v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 1462
    .end local v5    # "b$iv$iv":I
    .end local v6    # "$i$f$minOf":I
    long-to-int v5, v7

    .line 1464
    .local v5, "toSkip$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    .line 1465
    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 1466
    iget v6, v4, Lokio/Segment;->pos:I

    add-int/2addr v6, v5

    iput v6, v4, Lokio/Segment;->pos:I

    .line 1468
    iget v6, v4, Lokio/Segment;->pos:I

    iget v7, v4, Lokio/Segment;->limit:I

    if-ne v6, v7, :cond_0

    .line 1469
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1470
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1459
    .end local v4    # "head$iv":Lokio/Segment;
    .end local v5    # "toSkip$iv":I
    :cond_0
    goto :goto_0

    .line 1460
    :cond_1
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 1473
    :cond_2
    nop

    .line 367
    .end local v0    # "$this$commonSkip$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSkip":I
    .end local v2    # "byteCount$iv":J
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 6

    .line 564
    move-object v0, p0

    .local v0, "$this$commonSnapshot$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 2105
    .local v1, "$i$f$commonSnapshot":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const v4, 0x7fffffff

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2107
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    .line 564
    .end local v0    # "$this$commonSnapshot$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSnapshot":I
    return-object v0

    .line 2106
    .restart local v0    # "$this$commonSnapshot$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonSnapshot":I
    :cond_1
    const/4 v2, 0x0

    .line 2105
    .local v2, "$i$a$-check-BufferKt$commonSnapshot$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size > Int.MAX_VALUE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-check-BufferKt$commonSnapshot$1$iv":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 9
    .param p1, "byteCount"    # I

    .line 566
    move-object v0, p0

    .local v0, "$this$commonSnapshot$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 2108
    .local v1, "$i$f$commonSnapshot":I
    if-nez p1, :cond_0

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_2

    .line 2109
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    int-to-long v7, p1

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 2112
    const/4 v2, 0x0

    .line 2113
    .local v2, "offset$iv":I
    const/4 v3, 0x0

    .line 2114
    .local v3, "segmentCount$iv":I
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2115
    .local v4, "s$iv":Lokio/Segment;
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2116
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    if-eq v5, v6, :cond_1

    .line 2119
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 2120
    add-int/lit8 v3, v3, 0x1

    .line 2121
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 2115
    goto :goto_0

    .line 2117
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "s.limit == s.pos"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 2125
    :cond_2
    new-array v5, v3, [[B

    .line 2126
    .local v5, "segments$iv":[[B
    mul-int/lit8 v6, v3, 0x2

    new-array v6, v6, [I

    .line 2127
    .local v6, "directory$iv":[I
    const/4 v2, 0x0

    .line 2128
    const/4 v3, 0x0

    .line 2129
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 2130
    :goto_1
    if-ge v2, p1, :cond_3

    .line 2131
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v4, Lokio/Segment;->data:[B

    aput-object v7, v5, v3

    .line 2132
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 2134
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v6, v3

    .line 2135
    move-object v7, v5

    check-cast v7, [Ljava/lang/Object;

    array-length v7, v7

    add-int/2addr v7, v3

    iget v8, v4, Lokio/Segment;->pos:I

    aput v8, v6, v7

    .line 2136
    const/4 v7, 0x1

    iput-boolean v7, v4, Lokio/Segment;->shared:Z

    .line 2137
    add-int/lit8 v3, v3, 0x1

    .line 2138
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 2130
    goto :goto_1

    .line 2140
    :cond_3
    nop

    .line 2141
    new-instance v7, Lokio/SegmentedByteString;

    move-object v8, v5

    check-cast v8, [[B

    invoke-direct {v7, v8, v6}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v7, Lokio/ByteString;

    move-object v2, v7

    .line 566
    .end local v0    # "$this$commonSnapshot$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSnapshot":I
    .end local v2    # "offset$iv":I
    .end local v3    # "segmentCount$iv":I
    .end local v4    # "s$iv":Lokio/Segment;
    .end local v5    # "segments$iv":[[B
    .end local v6    # "directory$iv":[I
    :goto_2
    return-object v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 495
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 557
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writableSegment$okio(I)Lokio/Segment;
    .locals 5
    .param p1, "minimumCapacity"    # I

    .line 452
    move-object v0, p0

    .local v0, "$this$commonWritableSegment$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1793
    .local v1, "$i$f$commonWritableSegment":I
    const/16 v2, 0x2000

    const/4 v3, 0x1

    if-lt p1, v3, :cond_0

    if-gt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 1795
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_1

    .line 1796
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v2

    .line 1797
    .local v2, "result$iv":Lokio/Segment;
    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1798
    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1799
    iput-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1800
    goto :goto_3

    .line 1803
    .end local v2    # "result$iv":Lokio/Segment;
    :cond_1
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1804
    .local v3, "tail$iv":Lokio/Segment;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Lokio/Segment;->limit:I

    add-int/2addr v4, p1

    if-gt v4, v2, :cond_3

    iget-boolean v2, v3, Lokio/Segment;->owner:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_2

    .line 1805
    :cond_3
    :goto_1
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v2

    .line 1807
    .end local v3    # "tail$iv":Lokio/Segment;
    .local v2, "tail$iv":Lokio/Segment;
    :goto_2
    nop

    .line 452
    .end local v0    # "$this$commonWritableSegment$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWritableSegment":I
    .end local v2    # "tail$iv":Lokio/Segment;
    :goto_3
    return-object v2

    .line 1794
    .restart local v0    # "$this$commonWritableSegment$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWritableSegment":I
    :cond_4
    const/4 v2, 0x0

    .line 1793
    .local v2, "$i$a$-require-BufferKt$commonWritableSegment$1$iv":I
    nop

    .end local v2    # "$i$a$-require-BufferKt$commonWritableSegment$1$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unexpected capacity"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 410
    .local v0, "byteCount":I
    move v1, v0

    .line 411
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_0

    .line 412
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    .line 414
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 415
    .local v3, "toCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 417
    sub-int/2addr v1, v3

    .line 418
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    .line 411
    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "toCopy":I
    goto :goto_0

    .line 421
    :cond_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 422
    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 4
    .param p1, "byteString"    # Lokio/ByteString;

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    move-object v0, p0

    .line 1474
    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1475
    .local v1, "offset$iv":I
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    .local v2, "byteCount$iv":I
    const/4 v3, 0x0

    .line 1477
    .local v3, "$i$f$commonWrite":I
    invoke-virtual {p1, v0, v1, v2}, Lokio/ByteString;->write$okio(Lokio/Buffer;II)V

    .line 1478
    nop

    .line 369
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "offset$iv":I
    .end local v2    # "byteCount$iv":I
    .end local v3    # "$i$f$commonWrite":I
    return-object v0
.end method

.method public write(Lokio/ByteString;II)Lokio/Buffer;
    .locals 2
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1479
    .local v1, "$i$f$commonWrite":I
    invoke-virtual {p1, v0, p2, p3}, Lokio/ByteString;->write$okio(Lokio/Buffer;II)V

    .line 1480
    nop

    .line 372
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/Buffer;
    .locals 8
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1647
    .local v1, "$i$f$commonWrite":I
    move-wide v2, p2

    .line 1648
    .local v2, "byteCount$iv":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 1649
    invoke-interface {p1, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 1650
    .local v4, "read$iv":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 1651
    sub-long/2addr v2, v4

    .line 1648
    .end local v4    # "read$iv":J
    goto :goto_0

    .line 1650
    .restart local v4    # "read$iv":J
    :cond_0
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 1653
    .end local v4    # "read$iv":J
    :cond_1
    nop

    .line 430
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    .end local v2    # "byteCount$iv":J
    return-object v0
.end method

.method public write([B)Lokio/Buffer;
    .locals 4
    .param p1, "source"    # [B

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1618
    .local v1, "$i$f$commonWrite":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    .line 399
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0
.end method

.method public write([BII)Lokio/Buffer;
    .locals 10
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1619
    .local v1, "$i$f$commonWrite":I
    move v2, p2

    .line 1620
    .local v2, "offset$iv":I
    array-length v3, p1

    int-to-long v4, v3

    int-to-long v6, v2

    int-to-long v8, p3

    invoke-static/range {v4 .. v9}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1622
    add-int v3, v2, p3

    .line 1623
    .local v3, "limit$iv":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1624
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v4

    .line 1626
    .local v4, "tail$iv":Lokio/Segment;
    sub-int v5, v3, v2

    iget v6, v4, Lokio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1627
    .local v5, "toCopy$iv":I
    nop

    .line 1628
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 1629
    iget v7, v4, Lokio/Segment;->limit:I

    .line 1630
    nop

    .line 1631
    add-int v8, v2, v5

    .line 1627
    invoke-static {p1, v6, v7, v2, v8}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 1634
    add-int/2addr v2, v5

    .line 1635
    iget v6, v4, Lokio/Segment;->limit:I

    add-int/2addr v6, v5

    iput v6, v4, Lokio/Segment;->limit:I

    .line 1623
    .end local v4    # "tail$iv":Lokio/Segment;
    .end local v5    # "toCopy$iv":I
    goto :goto_0

    .line 1638
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v6, p3

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 1639
    nop

    .line 405
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    .end local v2    # "offset$iv":I
    .end local v3    # "limit$iv":I
    return-object v0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public bridge synthetic write(Lokio/ByteString;II)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/ByteString;II)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public bridge synthetic write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Source;J)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public write(Lokio/Buffer;J)V
    .locals 11
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1808
    .local v1, "$i$f$commonWrite":I
    move-wide v6, p2

    .line 1809
    .local v6, "byteCount$iv":J
    const/4 v8, 0x0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    if-eqz v2, :cond_7

    .line 1811
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1813
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_6

    .line 1815
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/Segment;->limit:I

    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_4

    .line 1816
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 1817
    .local v2, "tail$iv":Lokio/Segment;
    :goto_2
    nop

    .line 1818
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_3

    iget v3, v2, Lokio/Segment;->limit:I

    int-to-long v3, v3

    add-long/2addr v3, v6

    iget-boolean v5, v2, Lokio/Segment;->shared:Z

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_3

    :cond_2
    iget v5, v2, Lokio/Segment;->pos:I

    :goto_3
    int-to-long v9, v5

    sub-long/2addr v3, v9

    const/16 v5, 0x2000

    int-to-long v9, v5

    cmp-long v3, v3, v9

    if-gtz v3, :cond_3

    .line 1820
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v4, v6

    invoke-virtual {v3, v2, v4}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1821
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 1822
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    add-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 1823
    goto :goto_5

    .line 1827
    :cond_3
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v4, v6

    invoke-virtual {v3, v4}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v3

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1828
    .end local v2    # "tail$iv":Lokio/Segment;
    :cond_4
    nop

    .line 1832
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1833
    .local v2, "segmentToMove$iv":Lokio/Segment;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    .line 1834
    .local v3, "movedByteCount$iv":J
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1835
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v5, :cond_5

    .line 1836
    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1837
    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1838
    iget-object v5, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_4

    .line 1840
    :cond_5
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    .line 1841
    .local v5, "tail$iv":Lokio/Segment;
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v5

    .line 1842
    invoke-virtual {v5}, Lokio/Segment;->compact()V

    .line 1843
    .end local v5    # "tail$iv":Lokio/Segment;
    :goto_4
    nop

    .line 1844
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {p1, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 1845
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v9

    add-long/2addr v9, v3

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 1846
    sub-long/2addr v6, v3

    .line 1813
    .end local v2    # "segmentToMove$iv":Lokio/Segment;
    .end local v3    # "movedByteCount$iv":J
    goto/16 :goto_1

    .line 1848
    :cond_6
    nop

    .line 454
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    .end local v6    # "byteCount$iv":J
    :goto_5
    return-void

    .line 1810
    .restart local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWrite":I
    .restart local v6    # "byteCount$iv":J
    :cond_7
    const/4 v2, 0x0

    .line 1809
    .local v2, "$i$a$-require-BufferKt$commonWrite$1$iv":I
    nop

    .end local v2    # "$i$a$-require-BufferKt$commonWrite$1$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "source == this"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeAll(Lokio/Source;)J
    .locals 8
    .param p1, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    move-object v0, p0

    .local v0, "$this$commonWriteAll$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1640
    .local v1, "$i$f$commonWriteAll":I
    const-wide/16 v2, 0x0

    .line 1641
    .local v2, "totalBytesRead$iv":J
    :goto_0
    nop

    .line 1642
    const/16 v4, 0x2000

    int-to-long v4, v4

    invoke-interface {p1, v0, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 1643
    .local v4, "readCount$iv":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 1646
    .end local v4    # "readCount$iv":J
    nop

    .line 426
    .end local v0    # "$this$commonWriteAll$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteAll":I
    .end local v2    # "totalBytesRead$iv":J
    return-wide v2

    .line 1644
    .restart local v0    # "$this$commonWriteAll$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWriteAll":I
    .restart local v2    # "totalBytesRead$iv":J
    .restart local v4    # "readCount$iv":J
    :cond_0
    add-long/2addr v2, v4

    .line 1641
    .end local v4    # "readCount$iv":J
    goto :goto_0
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 7
    .param p1, "b"    # I

    .line 432
    move-object v0, p0

    .local v0, "$this$commonWriteByte$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1654
    .local v1, "$i$f$commonWriteByte":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    .line 1655
    .local v2, "tail$iv":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v4, v2, Lokio/Segment;->limit:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lokio/Segment;->limit:I

    int-to-byte v5, p1

    aput-byte v5, v3, v4

    .line 1656
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 1657
    nop

    .line 432
    .end local v0    # "$this$commonWriteByte$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteByte":I
    .end local v2    # "tail$iv":Lokio/Segment;
    return-object v0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 16
    .param p1, "v"    # J

    .line 446
    move-object/from16 v0, p0

    .local v0, "$this$commonWriteDecimalLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1690
    .local v1, "$i$f$commonWriteDecimalLong":I
    move-wide/from16 v2, p1

    .line 1691
    .local v2, "v$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1693
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_6

    .line 1696
    :cond_0
    const/4 v6, 0x0

    .line 1697
    .local v6, "negative$iv":Z
    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    .line 1698
    neg-long v2, v2

    .line 1699
    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 1700
    const-string v4, "-9223372036854775808"

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_6

    .line 1702
    :cond_1
    const/4 v6, 0x1

    .line 1706
    :cond_2
    nop

    .line 1707
    const-wide/32 v7, 0x5f5e100

    cmp-long v7, v2, v7

    const/16 v8, 0xa

    if-gez v7, :cond_a

    .line 1708
    const-wide/16 v9, 0x2710

    cmp-long v7, v2, v9

    if-gez v7, :cond_6

    .line 1709
    const-wide/16 v9, 0x64

    cmp-long v7, v2, v9

    if-gez v7, :cond_4

    .line 1710
    const-wide/16 v9, 0xa

    cmp-long v7, v2, v9

    if-gez v7, :cond_3

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 1711
    :cond_3
    nop

    .line 1710
    const/4 v7, 0x2

    goto/16 :goto_4

    .line 1712
    :cond_4
    const-wide/16 v9, 0x3e8

    cmp-long v7, v2, v9

    if-gez v7, :cond_5

    const/4 v7, 0x3

    goto :goto_0

    .line 1713
    :cond_5
    const/4 v7, 0x4

    .line 1712
    :goto_0
    nop

    .line 1709
    goto/16 :goto_4

    .line 1714
    :cond_6
    const-wide/32 v9, 0xf4240

    cmp-long v7, v2, v9

    if-gez v7, :cond_8

    .line 1715
    const-wide/32 v9, 0x186a0

    cmp-long v7, v2, v9

    if-gez v7, :cond_7

    const/4 v7, 0x5

    goto :goto_1

    .line 1716
    :cond_7
    nop

    .line 1715
    const/4 v7, 0x6

    goto :goto_1

    .line 1717
    :cond_8
    const-wide/32 v9, 0x989680

    cmp-long v7, v2, v9

    if-gez v7, :cond_9

    const/4 v7, 0x7

    goto :goto_1

    .line 1718
    :cond_9
    const/16 v7, 0x8

    .line 1717
    :goto_1
    nop

    .line 1714
    nop

    .line 1708
    goto/16 :goto_4

    .line 1719
    :cond_a
    const-wide v9, 0xe8d4a51000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_e

    .line 1720
    const-wide v9, 0x2540be400L

    cmp-long v7, v2, v9

    if-gez v7, :cond_c

    .line 1721
    const-wide/32 v9, 0x3b9aca00

    cmp-long v7, v2, v9

    if-gez v7, :cond_b

    const/16 v7, 0x9

    goto :goto_4

    .line 1722
    :cond_b
    nop

    .line 1721
    move v7, v8

    goto :goto_4

    .line 1723
    :cond_c
    const-wide v9, 0x174876e800L

    cmp-long v7, v2, v9

    if-gez v7, :cond_d

    const/16 v7, 0xb

    goto :goto_2

    .line 1724
    :cond_d
    const/16 v7, 0xc

    .line 1723
    :goto_2
    nop

    .line 1720
    goto :goto_4

    .line 1725
    :cond_e
    const-wide v9, 0x38d7ea4c68000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_11

    .line 1726
    const-wide v9, 0x9184e72a000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_f

    const/16 v7, 0xd

    goto :goto_4

    .line 1727
    :cond_f
    const-wide v9, 0x5af3107a4000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_10

    const/16 v7, 0xe

    goto :goto_3

    .line 1728
    :cond_10
    const/16 v7, 0xf

    .line 1727
    :goto_3
    nop

    .line 1726
    goto :goto_4

    .line 1729
    :cond_11
    const-wide v9, 0x16345785d8a0000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_13

    .line 1730
    const-wide v9, 0x2386f26fc10000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_12

    const/16 v7, 0x10

    goto :goto_4

    .line 1731
    :cond_12
    nop

    .line 1730
    const/16 v7, 0x11

    goto :goto_4

    .line 1732
    :cond_13
    const-wide v9, 0xde0b6b3a7640000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_14

    const/16 v7, 0x12

    goto :goto_4

    .line 1733
    :cond_14
    const/16 v7, 0x13

    .line 1732
    :goto_4
    nop

    .line 1729
    nop

    .line 1725
    nop

    .line 1719
    nop

    .line 1707
    nop

    .line 1706
    nop

    .line 1734
    .local v7, "width$iv":I
    if-eqz v6, :cond_15

    .line 1735
    add-int/lit8 v7, v7, 0x1

    .line 1738
    :cond_15
    invoke-virtual {v0, v7}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v9

    .line 1739
    .local v9, "tail$iv":Lokio/Segment;
    iget-object v10, v9, Lokio/Segment;->data:[B

    .line 1740
    .local v10, "data$iv":[B
    iget v11, v9, Lokio/Segment;->limit:I

    add-int/2addr v11, v7

    .line 1741
    .local v11, "pos$iv":I
    :goto_5
    cmp-long v12, v2, v4

    if-eqz v12, :cond_16

    .line 1742
    int-to-long v12, v8

    rem-long v14, v2, v12

    long-to-int v14, v14

    .line 1743
    .local v14, "digit$iv":I
    add-int/lit8 v11, v11, -0x1

    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v15

    aget-byte v15, v15, v14

    aput-byte v15, v10, v11

    .line 1744
    div-long/2addr v2, v12

    .line 1741
    .end local v14    # "digit$iv":I
    goto :goto_5

    .line 1746
    :cond_16
    if-eqz v6, :cond_17

    .line 1747
    add-int/lit8 v11, v11, -0x1

    const/16 v4, 0x2d

    int-to-byte v4, v4

    aput-byte v4, v10, v11

    .line 1750
    :cond_17
    iget v4, v9, Lokio/Segment;->limit:I

    add-int/2addr v4, v7

    iput v4, v9, Lokio/Segment;->limit:I

    .line 1751
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v12, v7

    add-long/2addr v4, v12

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .line 1752
    nop

    .line 446
    .end local v0    # "$this$commonWriteDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteDecimalLong":I
    .end local v2    # "v$iv":J
    .end local v6    # "negative$iv":Z
    .end local v7    # "width$iv":I
    .end local v9    # "tail$iv":Lokio/Segment;
    .end local v10    # "data$iv":[B
    .end local v11    # "pos$iv":I
    :goto_6
    return-object v0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 16
    .param p1, "v"    # J

    .line 449
    move-object/from16 v0, p0

    .local v0, "$this$commonWriteHexadecimalUnsignedLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1753
    .local v1, "$i$f$commonWriteHexadecimalUnsignedLong":I
    move-wide/from16 v2, p1

    .line 1754
    .local v2, "v$iv":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 1756
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 1761
    :cond_0
    move-wide v4, v2

    .line 1762
    .local v4, "x$iv":J
    const/4 v6, 0x1

    ushr-long v7, v4, v6

    or-long/2addr v4, v7

    .line 1763
    const/4 v7, 0x2

    ushr-long v8, v4, v7

    or-long/2addr v4, v8

    .line 1764
    const/4 v8, 0x4

    ushr-long v9, v4, v8

    or-long/2addr v4, v9

    .line 1765
    const/16 v9, 0x8

    ushr-long v10, v4, v9

    or-long/2addr v4, v10

    .line 1766
    const/16 v10, 0x10

    ushr-long v11, v4, v10

    or-long/2addr v4, v11

    .line 1767
    const/16 v11, 0x20

    ushr-long v12, v4, v11

    or-long/2addr v4, v12

    .line 1771
    ushr-long v12, v4, v6

    const-wide v14, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v12, v14

    sub-long/2addr v4, v12

    .line 1772
    ushr-long v12, v4, v7

    const-wide v14, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v12, v14

    and-long/2addr v14, v4

    add-long/2addr v12, v14

    .line 1773
    .end local v4    # "x$iv":J
    .local v12, "x$iv":J
    ushr-long v4, v12, v8

    add-long/2addr v4, v12

    const-wide v14, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v4, v14

    .line 1774
    .end local v12    # "x$iv":J
    .restart local v4    # "x$iv":J
    ushr-long v12, v4, v9

    add-long/2addr v4, v12

    .line 1775
    ushr-long v9, v4, v10

    add-long/2addr v4, v9

    .line 1776
    const-wide/16 v9, 0x3f

    and-long v12, v4, v9

    ushr-long v14, v4, v11

    and-long/2addr v9, v14

    add-long/2addr v12, v9

    .line 1779
    .end local v4    # "x$iv":J
    .restart local v12    # "x$iv":J
    const/4 v4, 0x3

    int-to-long v4, v4

    add-long/2addr v4, v12

    int-to-long v9, v8

    div-long/2addr v4, v9

    long-to-int v4, v4

    .line 1781
    .local v4, "width$iv":I
    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v5

    .line 1782
    .local v5, "tail$iv":Lokio/Segment;
    iget-object v7, v5, Lokio/Segment;->data:[B

    .line 1783
    .local v7, "data$iv":[B
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v6

    .line 1784
    .local v9, "pos$iv":I
    iget v6, v5, Lokio/Segment;->limit:I

    .line 1785
    .local v6, "start$iv":I
    :goto_0
    if-lt v9, v6, :cond_1

    .line 1786
    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v10

    const-wide/16 v14, 0xf

    and-long/2addr v14, v2

    long-to-int v11, v14

    aget-byte v10, v10, v11

    aput-byte v10, v7, v9

    .line 1787
    ushr-long/2addr v2, v8

    .line 1788
    add-int/lit8 v9, v9, -0x1

    .line 1785
    goto :goto_0

    .line 1790
    :cond_1
    iget v8, v5, Lokio/Segment;->limit:I

    add-int/2addr v8, v4

    iput v8, v5, Lokio/Segment;->limit:I

    .line 1791
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    int-to-long v14, v4

    add-long/2addr v10, v14

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$okio(J)V

    .line 1792
    nop

    .line 449
    .end local v0    # "$this$commonWriteHexadecimalUnsignedLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteHexadecimalUnsignedLong":I
    .end local v2    # "v$iv":J
    .end local v4    # "width$iv":I
    .end local v5    # "tail$iv":Lokio/Segment;
    .end local v6    # "start$iv":I
    .end local v7    # "data$iv":[B
    .end local v9    # "pos$iv":I
    .end local v12    # "x$iv":J
    :goto_1
    return-object v0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 9
    .param p1, "i"    # I

    .line 438
    move-object v0, p0

    .local v0, "$this$commonWriteInt$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1666
    .local v1, "$i$f$commonWriteInt":I
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    .line 1667
    .local v2, "tail$iv":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1668
    .local v3, "data$iv":[B
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1669
    .local v4, "limit$iv":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit$iv":I
    .local v5, "limit$iv":I
    ushr-int/lit8 v6, p1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1670
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v4    # "limit$iv":I
    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1671
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1672
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v4    # "limit$iv":I
    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1673
    iput v4, v2, Lokio/Segment;->limit:I

    .line 1674
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 1675
    nop

    .line 438
    .end local v0    # "$this$commonWriteInt$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteInt":I
    .end local v2    # "tail$iv":Lokio/Segment;
    .end local v3    # "data$iv":[B
    .end local v4    # "limit$iv":I
    return-object v0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "i"    # I

    .line 440
    invoke-static {p1}, Lokio/-Util;->reverseBytes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 11
    .param p1, "v"    # J

    .line 442
    move-object v0, p0

    .local v0, "$this$commonWriteLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1676
    .local v1, "$i$f$commonWriteLong":I
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v3

    .line 1677
    .local v3, "tail$iv":Lokio/Segment;
    iget-object v4, v3, Lokio/Segment;->data:[B

    .line 1678
    .local v4, "data$iv":[B
    iget v5, v3, Lokio/Segment;->limit:I

    .line 1679
    .local v5, "limit$iv":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .local v6, "limit$iv":I
    const/16 v7, 0x38

    ushr-long v7, p1, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 1680
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    const/16 v7, 0x30

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1681
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v6    # "limit$iv":I
    const/16 v7, 0x28

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 1682
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    const/16 v7, 0x20

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1683
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v6    # "limit$iv":I
    const/16 v7, 0x18

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 1684
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    const/16 v7, 0x10

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1685
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v6    # "limit$iv":I
    ushr-long v7, p1, v2

    and-long/2addr v7, v9

    long-to-int v2, v7

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    .line 1686
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "limit$iv":I
    .local v2, "limit$iv":I
    and-long v7, p1, v9

    long-to-int v5, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 1687
    iput v2, v3, Lokio/Segment;->limit:I

    .line 1688
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 1689
    nop

    .line 442
    .end local v0    # "$this$commonWriteLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteLong":I
    .end local v2    # "limit$iv":I
    .end local v3    # "tail$iv":Lokio/Segment;
    .end local v4    # "data$iv":[B
    return-object v0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 2
    .param p1, "v"    # J

    .line 444
    invoke-static {p1, p2}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 9
    .param p1, "s"    # I

    .line 434
    move-object v0, p0

    .local v0, "$this$commonWriteShort$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1658
    .local v1, "$i$f$commonWriteShort":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    .line 1659
    .local v2, "tail$iv":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1660
    .local v3, "data$iv":[B
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1661
    .local v4, "limit$iv":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit$iv":I
    .local v5, "limit$iv":I
    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1662
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v4    # "limit$iv":I
    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1663
    iput v4, v2, Lokio/Segment;->limit:I

    .line 1664
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 1665
    nop

    .line 434
    .end local v0    # "$this$commonWriteShort$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteShort":I
    .end local v2    # "tail$iv":Lokio/Segment;
    .end local v3    # "data$iv":[B
    .end local v4    # "limit$iv":I
    return-object v0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "s"    # I

    .line 436
    int-to-short v0, p1

    invoke-static {v0}, Lokio/-Util;->reverseBytes(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    const-string/jumbo v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_7

    .line 392
    if-lt p3, p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 394
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 395
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    .local v0, "data":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    return-object v1

    .line 395
    .end local v0    # "data":[B
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_5
    const/4 v0, 0x0

    .line 393
    .local v0, "$i$a$-require-Buffer$writeString$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$writeString$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1054
    :cond_6
    const/4 v0, 0x0

    .line 392
    .local v0, "$i$a$-require-Buffer$writeString$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$writeString$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1054
    :cond_7
    const/4 v0, 0x0

    .line 391
    .local v0, "$i$a$-require-Buffer$writeString$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$writeString$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    const-string/jumbo v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 383
    nop

    .line 382
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    .line 383
    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lokio/Buffer;->writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move-wide v4, p2

    .line 186
    .local v4, "byteCount":J
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 188
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 189
    .local v0, "s":Lokio/Segment;
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-lez v1, :cond_1

    .line 190
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    .local v1, "b$iv":I
    const/4 v2, 0x0

    .line 1053
    .local v2, "$i$f$minOf":I
    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 190
    .end local v1    # "b$iv":I
    .end local v2    # "$i$f$minOf":I
    long-to-int v1, v6

    .line 191
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 194
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v6, v1

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 195
    int-to-long v2, v1

    sub-long/2addr v4, v2

    .line 197
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 198
    move-object v2, v0

    .line 199
    .local v2, "toRecycle":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    .line 200
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 201
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 189
    .end local v1    # "toCopy":I
    .end local v2    # "toRecycle":Lokio/Segment;
    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    const-string/jumbo v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 17
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-string/jumbo v3, "string"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    move-object/from16 v3, p0

    .local v3, "$this$commonWriteUtf8$iv":Lokio/Buffer;
    const/4 v4, 0x0

    .line 1481
    .local v4, "$i$f$commonWriteUtf8":I
    const/4 v6, 0x1

    if-ltz v1, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_f

    .line 1483
    if-lt v2, v1, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_e

    .line 1484
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v2, v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_d

    .line 1487
    move/from16 v7, p2

    .line 1488
    .local v7, "i$iv":I
    :goto_3
    if-ge v7, v2, :cond_c

    .line 1489
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1491
    .local v8, "c$iv":I
    nop

    .line 1492
    const/16 v9, 0x80

    if-ge v8, v9, :cond_5

    .line 1493
    invoke-virtual {v3, v6}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v10

    .line 1494
    .local v10, "tail$iv":Lokio/Segment;
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 1495
    .local v11, "data$iv":[B
    iget v12, v10, Lokio/Segment;->limit:I

    sub-int/2addr v12, v7

    .line 1496
    .local v12, "segmentOffset$iv":I
    rsub-int v13, v12, 0x2000

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1499
    .local v13, "runLimit$iv":I
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i$iv":I
    .local v14, "i$iv":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    .line 1503
    :goto_4
    if-ge v14, v13, :cond_4

    .line 1504
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1505
    if-lt v8, v9, :cond_3

    goto :goto_5

    .line 1506
    :cond_3
    add-int/lit8 v7, v14, 0x1

    .end local v14    # "i$iv":I
    .restart local v7    # "i$iv":I
    add-int/2addr v14, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v14

    .line 1503
    move v14, v7

    goto :goto_4

    .line 1509
    .end local v7    # "i$iv":I
    .restart local v14    # "i$iv":I
    :cond_4
    :goto_5
    add-int v7, v14, v12

    iget v9, v10, Lokio/Segment;->limit:I

    sub-int/2addr v7, v9

    .line 1510
    .local v7, "runSize$iv":I
    iget v9, v10, Lokio/Segment;->limit:I

    add-int/2addr v9, v7

    iput v9, v10, Lokio/Segment;->limit:I

    .line 1511
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v15

    int-to-long v5, v7

    add-long/2addr v5, v15

    invoke-virtual {v3, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    move v7, v14

    const/4 v13, 0x1

    .end local v7    # "runSize$iv":I
    .end local v10    # "tail$iv":Lokio/Segment;
    .end local v11    # "data$iv":[B
    .end local v12    # "segmentOffset$iv":I
    .end local v13    # "runLimit$iv":I
    goto/16 :goto_9

    .line 1514
    .end local v14    # "i$iv":I
    .local v7, "i$iv":I
    :cond_5
    const/16 v5, 0x800

    const/4 v6, 0x2

    if-ge v8, v5, :cond_6

    .line 1516
    invoke-virtual {v3, v6}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v5

    .line 1518
    .local v5, "tail$iv":Lokio/Segment;
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v12, v8, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1519
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    and-int/lit8 v12, v8, 0x3f

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    .line 1521
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v6

    iput v9, v5, Lokio/Segment;->limit:I

    .line 1522
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    add-long/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 1523
    nop

    .end local v5    # "tail$iv":Lokio/Segment;
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    goto/16 :goto_9

    .line 1526
    :cond_6
    const v5, 0xd800

    const/16 v11, 0x3f

    if-lt v8, v5, :cond_b

    const v5, 0xdfff

    if-le v8, v5, :cond_7

    goto/16 :goto_8

    .line 1543
    :cond_7
    add-int/lit8 v12, v7, 0x1

    if-ge v12, v2, :cond_8

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    .line 1544
    .local v12, "low$iv":I
    :goto_6
    const v13, 0xdbff

    if-gt v8, v13, :cond_a

    const v13, 0xdc00

    if-gt v13, v12, :cond_a

    if-ge v5, v12, :cond_9

    goto :goto_7

    .line 1551
    :cond_9
    and-int/lit16 v5, v8, 0x3ff

    shl-int/lit8 v5, v5, 0xa

    and-int/lit16 v13, v12, 0x3ff

    or-int/2addr v5, v13

    const/high16 v13, 0x10000

    add-int/2addr v5, v13

    .line 1554
    .local v5, "codePoint$iv":I
    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v14

    .line 1556
    .local v14, "tail$iv":Lokio/Segment;
    iget-object v15, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    shr-int/lit8 v10, v5, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v15, v13

    .line 1557
    iget-object v10, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    const/4 v15, 0x1

    add-int/2addr v13, v15

    shr-int/lit8 v15, v5, 0xc

    and-int/2addr v15, v11

    or-int/2addr v15, v9

    int-to-byte v15, v15

    aput-byte v15, v10, v13

    .line 1558
    iget-object v10, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    add-int/2addr v13, v6

    shr-int/lit8 v6, v5, 0x6

    and-int/2addr v6, v11

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v10, v13

    .line 1559
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v10, v14, Lokio/Segment;->limit:I

    const/4 v11, 0x3

    add-int/2addr v10, v11

    and-int/lit8 v11, v5, 0x3f

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v6, v10

    .line 1561
    iget v6, v14, Lokio/Segment;->limit:I

    const/4 v9, 0x4

    add-int/2addr v6, v9

    iput v6, v14, Lokio/Segment;->limit:I

    .line 1562
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v15, 0x4

    add-long/2addr v9, v15

    invoke-virtual {v3, v9, v10}, Lokio/Buffer;->setSize$okio(J)V

    .line 1563
    add-int/lit8 v7, v7, 0x2

    const/4 v13, 0x1

    goto :goto_9

    .line 1545
    .end local v5    # "codePoint$iv":I
    .end local v14    # "tail$iv":Lokio/Segment;
    :cond_a
    :goto_7
    invoke-virtual {v3, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1546
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    goto :goto_9

    .line 1528
    .end local v12    # "low$iv":I
    :cond_b
    :goto_8
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v10

    .line 1530
    .restart local v10    # "tail$iv":Lokio/Segment;
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v12, v10, Lokio/Segment;->limit:I

    shr-int/lit8 v13, v8, 0xc

    or-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 1531
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v12, v10, Lokio/Segment;->limit:I

    const/4 v13, 0x1

    add-int/2addr v12, v13

    shr-int/lit8 v14, v8, 0x6

    and-int/2addr v11, v14

    or-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v5, v12

    .line 1532
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v11, v10, Lokio/Segment;->limit:I

    add-int/2addr v11, v6

    and-int/lit8 v6, v8, 0x3f

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    .line 1534
    iget v5, v10, Lokio/Segment;->limit:I

    const/4 v6, 0x3

    add-int/2addr v5, v6

    iput v5, v10, Lokio/Segment;->limit:I

    .line 1535
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v11, 0x3

    add-long/2addr v5, v11

    invoke-virtual {v3, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 1536
    nop

    .end local v10    # "tail$iv":Lokio/Segment;
    add-int/lit8 v7, v7, 0x1

    .line 1564
    .end local v8    # "c$iv":I
    :goto_9
    nop

    .line 1566
    nop

    .line 1488
    move v6, v13

    goto/16 :goto_3

    .line 1569
    :cond_c
    nop

    .line 377
    .end local v3    # "$this$commonWriteUtf8$iv":Lokio/Buffer;
    .end local v4    # "$i$f$commonWriteUtf8":I
    .end local v7    # "i$iv":I
    return-object v3

    .line 1482
    .restart local v3    # "$this$commonWriteUtf8$iv":Lokio/Buffer;
    .restart local v4    # "$i$f$commonWriteUtf8":I
    :cond_d
    const/4 v5, 0x0

    .line 1484
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$3$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex > string.length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$3$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 1482
    :cond_e
    const/4 v5, 0x0

    .line 1483
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$2$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex < beginIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$2$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 1482
    :cond_f
    const/4 v5, 0x0

    .line 1481
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$1$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginIndex < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$1$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 11
    .param p1, "codePoint"    # I

    .line 380
    move-object v0, p0

    .local v0, "$this$commonWriteUtf8CodePoint$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1570
    .local v1, "$i$f$commonWriteUtf8CodePoint":I
    nop

    .line 1571
    const/16 v2, 0x80

    if-ge p1, v2, :cond_0

    .line 1573
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_1

    .line 1575
    :cond_0
    const/16 v3, 0x800

    const/4 v4, 0x2

    if-ge p1, v3, :cond_1

    .line 1577
    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v3

    .line 1579
    .local v3, "tail$iv":Lokio/Segment;
    iget-object v5, v3, Lokio/Segment;->data:[B

    iget v6, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v7, p1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1580
    iget-object v5, v3, Lokio/Segment;->data:[B

    iget v6, v3, Lokio/Segment;->limit:I

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, p1, 0x3f

    or-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 1582
    iget v2, v3, Lokio/Segment;->limit:I

    add-int/2addr v2, v4

    iput v2, v3, Lokio/Segment;->limit:I

    .line 1583
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .end local v3    # "tail$iv":Lokio/Segment;
    goto/16 :goto_1

    .line 1585
    :cond_1
    const v3, 0xd800

    const/16 v5, 0x3f

    if-le v3, p1, :cond_2

    goto :goto_0

    :cond_2
    const v3, 0xdfff

    if-lt v3, p1, :cond_3

    .line 1587
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_1

    .line 1589
    :cond_3
    :goto_0
    const/high16 v3, 0x10000

    const/4 v6, 0x3

    if-ge p1, v3, :cond_4

    .line 1591
    invoke-virtual {v0, v6}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v3

    .line 1593
    .restart local v3    # "tail$iv":Lokio/Segment;
    iget-object v7, v3, Lokio/Segment;->data:[B

    iget v8, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v9, p1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1594
    iget-object v7, v3, Lokio/Segment;->data:[B

    iget v8, v3, Lokio/Segment;->limit:I

    add-int/lit8 v8, v8, 0x1

    shr-int/lit8 v9, p1, 0x6

    and-int/2addr v5, v9

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v7, v8

    .line 1595
    iget-object v5, v3, Lokio/Segment;->data:[B

    iget v7, v3, Lokio/Segment;->limit:I

    add-int/2addr v7, v4

    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v5, v7

    .line 1597
    iget v2, v3, Lokio/Segment;->limit:I

    add-int/2addr v2, v6

    iput v2, v3, Lokio/Segment;->limit:I

    .line 1598
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$okio(J)V

    .end local v3    # "tail$iv":Lokio/Segment;
    goto :goto_1

    .line 1600
    :cond_4
    const v3, 0x10ffff

    if-gt p1, v3, :cond_5

    .line 1602
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v7

    .line 1604
    .local v7, "tail$iv":Lokio/Segment;
    iget-object v8, v7, Lokio/Segment;->data:[B

    iget v9, v7, Lokio/Segment;->limit:I

    shr-int/lit8 v10, p1, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1605
    iget-object v8, v7, Lokio/Segment;->data:[B

    iget v9, v7, Lokio/Segment;->limit:I

    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v10, p1, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v2

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1606
    iget-object v8, v7, Lokio/Segment;->data:[B

    iget v9, v7, Lokio/Segment;->limit:I

    add-int/2addr v9, v4

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    .line 1607
    iget-object v4, v7, Lokio/Segment;->data:[B

    iget v5, v7, Lokio/Segment;->limit:I

    add-int/2addr v5, v6

    and-int/lit8 v6, p1, 0x3f

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    .line 1609
    iget v2, v7, Lokio/Segment;->limit:I

    add-int/2addr v2, v3

    iput v2, v7, Lokio/Segment;->limit:I

    .line 1610
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->setSize$okio(J)V

    .line 1617
    .end local v7    # "tail$iv":Lokio/Segment;
    :goto_1
    nop

    .line 380
    .end local v0    # "$this$commonWriteUtf8CodePoint$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteUtf8CodePoint":I
    return-object v0

    .line 1613
    .restart local v0    # "$this$commonWriteUtf8CodePoint$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWriteUtf8CodePoint":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected code point: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lokio/-Util;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object p1

    check-cast p1, Lokio/BufferedSink;

    return-object p1
.end method
