.class public abstract Lcom/winlator/cmod/core/MSLink;
.super Ljava/lang/Object;
.source "MSLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winlator/cmod/core/MSLink$Options;
    }
.end annotation


# static fields
.field private static final ForceNoLinkInfo:I = 0x100

.field private static final HasArguments:I = 0x20

.field private static final HasIconLocation:I = 0x40

.field private static final HasLinkTargetIDList:I = 0x1

.field public static final SW_SHOWMAXIMIZED:B = 0x3t

.field public static final SW_SHOWMINNOACTIVE:B = 0x7t

.field public static final SW_SHOWNORMAL:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static charToHexDigit(C)I
    .locals 1
    .param p0, "chr"    # C

    .line 35
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0
.end method

.method private static convertCLSIDtoDATA(Ljava/lang/String;)[B
    .locals 19
    .param p0, "str"    # Ljava/lang/String;

    .line 43
    move-object/from16 v0, p0

    .line 44
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v2, v4}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v2

    .line 45
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v5, v7}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v5

    .line 46
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v8, v10}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v8

    .line 47
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v11, v13}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v11

    .line 48
    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xc

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v14, v13}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v13

    .line 49
    const/16 v14, 0x9

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0xa

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v15, v3}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v3

    .line 50
    const/16 v15, 0x10

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v14, v1}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v1

    .line 51
    const/16 v14, 0xe

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v14, 0xf

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v6, v4}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v4

    .line 52
    const/16 v6, 0x13

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v14, 0x14

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v6, v14}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v6

    .line 53
    const/16 v14, 0x15

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v9, 0x16

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v14, v9}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v9

    .line 54
    const/16 v14, 0x18

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v7, 0x19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v14, v7}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v7

    .line 55
    const/16 v14, 0x1a

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v12, 0x1b

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v14, v12}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v12

    .line 56
    const/16 v14, 0x1c

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v10, 0x1d

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v14, v10}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v10

    .line 57
    const/16 v14, 0x1e

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x1f

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v14, v15}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v14

    .line 58
    const/16 v15, 0x20

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v17, v14

    const/16 v14, 0x21

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v15, v14}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v14

    .line 59
    const/16 v15, 0x22

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v18, v14

    const/16 v14, 0x23

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v15, v14}, Lcom/winlator/cmod/core/MSLink;->twoCharsToByte(CC)B

    move-result v14

    const/16 v15, 0x10

    new-array v15, v15, [B

    const/16 v16, 0x0

    aput-byte v2, v15, v16

    const/4 v2, 0x1

    aput-byte v5, v15, v2

    const/4 v2, 0x2

    aput-byte v8, v15, v2

    const/4 v2, 0x3

    aput-byte v11, v15, v2

    const/4 v2, 0x4

    aput-byte v13, v15, v2

    const/4 v2, 0x5

    aput-byte v3, v15, v2

    const/4 v2, 0x6

    aput-byte v1, v15, v2

    const/4 v1, 0x7

    aput-byte v4, v15, v1

    const/16 v1, 0x8

    aput-byte v6, v15, v1

    const/16 v1, 0x9

    aput-byte v9, v15, v1

    const/16 v1, 0xa

    aput-byte v7, v15, v1

    const/16 v1, 0xb

    aput-byte v12, v15, v1

    const/16 v1, 0xc

    aput-byte v10, v15, v1

    const/16 v1, 0xd

    aput-byte v17, v15, v1

    const/16 v1, 0xe

    aput-byte v18, v15, v1

    const/16 v1, 0xf

    aput-byte v14, v15, v1

    .line 43
    return-object v15
.end method

.method public static createDesktopFile(Ljava/io/File;Landroid/content/Context;)V
    .locals 12
    .param p0, "lnkFile"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    const-string v0, "\n"

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "lnkFilePath":Ljava/lang/String;
    invoke-static {p0}, Lcom/winlator/cmod/core/MSLink;->parseFilePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/winlator/cmod/core/StringUtils;->escapeFileDOSPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {p1}, Lcom/winlator/cmod/xenvironment/ImageFs;->find(Landroid/content/Context;)Lcom/winlator/cmod/xenvironment/ImageFs;

    move-result-object v3

    .line 219
    .local v3, "imageFs":Lcom/winlator/cmod/xenvironment/ImageFs;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".desktop"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, "desktopFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 222
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 223
    .local v7, "pw":Ljava/io/PrintWriter;
    const-string v9, "[Desktop Entry]\n"

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 224
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exec=env WINEPREFIX=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Lcom/winlator/cmod/xenvironment/ImageFs;->wineprefix:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\" wine "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 226
    const-string v0, "Type=Application\n"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 227
    const-string v0, "StartupNotify=True\n"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 229
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    :goto_0
    return-void
.end method

.method public static createFile(Lcom/winlator/cmod/core/MSLink$Options;Ljava/io/File;)V
    .locals 32
    .param p0, "options"    # Lcom/winlator/cmod/core/MSLink$Options;
    .param p1, "outputFile"    # Ljava/io/File;

    .line 92
    move-object/from16 v1, p0

    const/4 v0, 0x4

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 93
    .local v2, "HeaderSize":[B
    const-string v3, "00021401-0000-0000-c000-000000000046"

    invoke-static {v3}, Lcom/winlator/cmod/core/MSLink;->convertCLSIDtoDATA(Ljava/lang/String;)[B

    move-result-object v3

    .line 95
    .local v3, "LinkCLSID":[B
    const/16 v4, 0x101

    .line 96
    .local v4, "linkFlags":I
    iget-object v5, v1, Lcom/winlator/cmod/core/MSLink$Options;->cmdArgs:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/winlator/cmod/core/MSLink$Options;->cmdArgs:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    or-int/lit8 v4, v4, 0x20

    .line 97
    :cond_0
    iget-object v5, v1, Lcom/winlator/cmod/core/MSLink$Options;->iconLocation:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/winlator/cmod/core/MSLink$Options;->iconLocation:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    or-int/lit8 v4, v4, 0x40

    .line 99
    :cond_1
    invoke-static {v4}, Lcom/winlator/cmod/core/MSLink;->intToByteArray(I)[B

    move-result-object v5

    .line 102
    .local v5, "LinkFlags":[B
    iget-object v6, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    const-string v7, "/+"

    const-string v8, "\\\\"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    .line 103
    iget-object v6, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    const-string v7, "\\"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0xc

    if-eqz v6, :cond_2

    .line 104
    new-array v6, v0, [B

    fill-array-data v6, :array_1

    .line 105
    .local v6, "FileAttributes":[B
    new-array v8, v8, [B

    fill-array-data v8, :array_2

    .line 106
    .local v8, "prefixOfTarget":[B
    iget-object v9, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    const-string v10, "\\\\+$"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    goto :goto_0

    .line 109
    .end local v6    # "FileAttributes":[B
    .end local v8    # "prefixOfTarget":[B
    :cond_2
    new-array v6, v0, [B

    fill-array-data v6, :array_3

    .line 110
    .restart local v6    # "FileAttributes":[B
    new-array v8, v8, [B

    fill-array-data v8, :array_4

    .line 114
    .restart local v8    # "prefixOfTarget":[B
    :goto_0
    const/16 v9, 0x8

    new-array v9, v9, [B

    fill-array-data v9, :array_5

    move-object v10, v9

    .local v10, "WriteTime":[B
    move-object v11, v9

    .line 116
    .local v9, "CreationTime":[B
    .local v11, "AccessTime":[B
    iget v12, v1, Lcom/winlator/cmod/core/MSLink$Options;->fileSize:I

    invoke-static {v12}, Lcom/winlator/cmod/core/MSLink;->intToByteArray(I)[B

    move-result-object v12

    .line 117
    .local v12, "FileSize":[B
    iget v13, v1, Lcom/winlator/cmod/core/MSLink$Options;->iconIndex:I

    invoke-static {v13}, Lcom/winlator/cmod/core/MSLink;->intToByteArray(I)[B

    move-result-object v13

    .line 118
    .local v13, "IconIndex":[B
    iget v14, v1, Lcom/winlator/cmod/core/MSLink$Options;->showCommand:I

    invoke-static {v14}, Lcom/winlator/cmod/core/MSLink;->intToByteArray(I)[B

    move-result-object v14

    .line 119
    .local v14, "ShowCommand":[B
    const/4 v15, 0x2

    new-array v0, v15, [B

    fill-array-data v0, :array_6

    move-object/from16 v17, v0

    .line 120
    .local v17, "Hotkey":[B
    new-array v0, v15, [B

    fill-array-data v0, :array_7

    move-object/from16 v18, v0

    .line 121
    .local v18, "Reserved1":[B
    const/4 v0, 0x4

    new-array v15, v0, [B

    fill-array-data v15, :array_8

    .line 122
    .local v15, "Reserved2":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_9

    move-object/from16 v19, v0

    .line 124
    .local v19, "Reserved3":[B
    const-string v0, "20d04fe0-3aea-1069-a2d8-08002b30309d"

    move-object/from16 v20, v15

    .end local v15    # "Reserved2":[B
    .local v20, "Reserved2":[B
    invoke-static {v0}, Lcom/winlator/cmod/core/MSLink;->convertCLSIDtoDATA(Ljava/lang/String;)[B

    move-result-object v15

    .line 125
    .local v15, "CLSIDComputer":[B
    const-string v0, "208d2c60-3aea-1069-a2d7-08002b30309d"

    move-object/from16 v21, v14

    .end local v14    # "ShowCommand":[B
    .local v21, "ShowCommand":[B
    invoke-static {v0}, Lcom/winlator/cmod/core/MSLink;->convertCLSIDtoDATA(Ljava/lang/String;)[B

    move-result-object v14

    .line 128
    .local v14, "CLSIDNetwork":[B
    iget-object v0, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v22, v13

    .end local v13    # "IconIndex":[B
    .local v22, "IconIndex":[B
    if-eqz v0, :cond_4

    .line 129
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    .line 130
    .local v0, "prefixRoot":[B
    iget-object v13, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-static {v13}, Lcom/winlator/cmod/core/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 131
    .local v13, "targetRoot":[B
    move-object/from16 v25, v0

    .end local v0    # "prefixRoot":[B
    .local v25, "prefixRoot":[B
    iget-object v0, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    move-object/from16 v26, v13

    .end local v13    # "targetRoot":[B
    .local v26, "targetRoot":[B
    iget-object v13, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v13, 0x1

    add-int/2addr v7, v13

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .end local v26    # "targetRoot":[B
    .restart local v13    # "targetRoot":[B
    :cond_3
    move-object/from16 v26, v13

    .end local v13    # "targetRoot":[B
    .restart local v26    # "targetRoot":[B
    const/4 v0, 0x0

    .line 132
    .local v0, "targetLeaf":[B
    :goto_1
    const/4 v7, 0x2

    new-array v13, v7, [B

    fill-array-data v13, :array_b

    filled-new-array {v13, v14}, [[B

    move-result-object v7

    invoke-static {v7}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v7

    move-object v13, v0

    move-object/from16 v0, v26

    move-object/from16 v31, v14

    move-object v14, v7

    move-object/from16 v7, v25

    move-object/from16 v25, v31

    .local v7, "itemData":[B
    goto :goto_2

    .line 135
    .end local v0    # "targetLeaf":[B
    .end local v7    # "itemData":[B
    .end local v25    # "prefixRoot":[B
    .end local v26    # "targetRoot":[B
    :cond_4
    const/4 v0, 0x1

    new-array v13, v0, [B

    const/16 v0, 0x2f

    move-object/from16 v25, v14

    const/4 v14, 0x0

    .end local v14    # "CLSIDNetwork":[B
    .local v25, "CLSIDNetwork":[B
    aput-byte v0, v13, v14

    move-object v0, v13

    .line 136
    .local v0, "prefixRoot":[B
    iget-object v13, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 137
    .local v7, "index":I
    iget-object v13, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    move-object/from16 v26, v0

    .end local v0    # "prefixRoot":[B
    .local v26, "prefixRoot":[B
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 138
    .restart local v13    # "targetRoot":[B
    iget-object v0, v1, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/MSLink;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 139
    .local v0, "targetLeaf":[B
    move-object/from16 v27, v0

    const/4 v14, 0x2

    .end local v0    # "targetLeaf":[B
    .local v27, "targetLeaf":[B
    new-array v0, v14, [B

    fill-array-data v0, :array_c

    filled-new-array {v0, v15}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    move-object v14, v0

    move-object v0, v13

    move-object/from16 v7, v26

    move-object/from16 v13, v27

    .line 142
    .end local v26    # "prefixRoot":[B
    .end local v27    # "targetLeaf":[B
    .local v0, "targetRoot":[B
    .local v7, "prefixRoot":[B
    .local v13, "targetLeaf":[B
    .local v14, "itemData":[B
    :goto_2
    move-object/from16 v26, v15

    .end local v15    # "CLSIDComputer":[B
    .local v26, "CLSIDComputer":[B
    const/16 v15, 0x15

    new-array v15, v15, [B

    filled-new-array {v0, v15}, [[B

    move-result-object v15

    invoke-static {v15}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v15

    .line 144
    .end local v0    # "targetRoot":[B
    .local v15, "targetRoot":[B
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v23, 0x0

    aput-byte v23, v0, v23

    move-object/from16 v23, v0

    .line 145
    .local v23, "endOfString":[B
    invoke-static {v14}, Lcom/winlator/cmod/core/MSLink;->generateIDLIST([B)[B

    move-result-object v0

    move-object/from16 v27, v14

    move-object/from16 v14, v23

    .end local v23    # "endOfString":[B
    .local v14, "endOfString":[B
    .local v27, "itemData":[B
    filled-new-array {v7, v15, v14}, [[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v23

    move-object/from16 v28, v7

    .end local v7    # "prefixRoot":[B
    .local v28, "prefixRoot":[B
    invoke-static/range {v23 .. v23}, Lcom/winlator/cmod/core/MSLink;->generateIDLIST([B)[B

    move-result-object v7

    filled-new-array {v0, v7}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    .line 146
    .local v0, "IDListItems":[B
    if-eqz v13, :cond_5

    filled-new-array {v8, v13, v14}, [[B

    move-result-object v7

    invoke-static {v7}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v7

    invoke-static {v7}, Lcom/winlator/cmod/core/MSLink;->generateIDLIST([B)[B

    move-result-object v7

    filled-new-array {v0, v7}, [[B

    move-result-object v7

    invoke-static {v7}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    :cond_5
    move-object v7, v0

    .line 147
    .end local v0    # "IDListItems":[B
    .local v7, "IDListItems":[B
    move-object/from16 v23, v8

    .end local v8    # "prefixOfTarget":[B
    .local v23, "prefixOfTarget":[B
    invoke-static {v7}, Lcom/winlator/cmod/core/MSLink;->generateIDLIST([B)[B

    move-result-object v8

    .line 149
    .local v8, "IDList":[B
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_d

    move-object/from16 v16, v0

    .line 151
    .local v16, "TerminalID":[B
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 152
    .local v0, "StringData":[B
    and-int/lit8 v24, v4, 0x20

    if-eqz v24, :cond_6

    move-object/from16 v24, v7

    .end local v7    # "IDListItems":[B
    .local v24, "IDListItems":[B
    iget-object v7, v1, Lcom/winlator/cmod/core/MSLink$Options;->cmdArgs:Ljava/lang/String;

    invoke-static {v7}, Lcom/winlator/cmod/core/MSLink;->stringSizePaddedToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    filled-new-array {v0, v7}, [[B

    move-result-object v7

    invoke-static {v7}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    goto :goto_3

    .end local v24    # "IDListItems":[B
    .restart local v7    # "IDListItems":[B
    :cond_6
    move-object/from16 v24, v7

    .line 153
    .end local v7    # "IDListItems":[B
    .restart local v24    # "IDListItems":[B
    :goto_3
    and-int/lit8 v7, v4, 0x40

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/winlator/cmod/core/MSLink$Options;->iconLocation:Ljava/lang/String;

    invoke-static {v7}, Lcom/winlator/cmod/core/MSLink;->stringSizePaddedToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    filled-new-array {v0, v7}, [[B

    move-result-object v7

    invoke-static {v7}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v0

    :cond_7
    move-object v7, v0

    .line 155
    .end local v0    # "StringData":[B
    .local v7, "StringData":[B
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v29, v0

    .line 156
    .local v29, "os":Ljava/io/FileOutputStream;
    move-object/from16 v1, v29

    .end local v29    # "os":Ljava/io/FileOutputStream;
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 157
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 158
    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 159
    invoke-virtual {v1, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 160
    invoke-virtual {v1, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 161
    invoke-virtual {v1, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 162
    invoke-virtual {v1, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 163
    invoke-virtual {v1, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 164
    move-object/from16 v29, v2

    move-object/from16 v2, v22

    .end local v22    # "IconIndex":[B
    .local v2, "IconIndex":[B
    .local v29, "HeaderSize":[B
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 165
    move-object/from16 v22, v2

    move-object/from16 v2, v21

    .end local v21    # "ShowCommand":[B
    .local v2, "ShowCommand":[B
    .restart local v22    # "IconIndex":[B
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 166
    move-object/from16 v21, v2

    move-object/from16 v2, v17

    .end local v17    # "Hotkey":[B
    .local v2, "Hotkey":[B
    .restart local v21    # "ShowCommand":[B
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 167
    move-object/from16 v17, v2

    move-object/from16 v2, v18

    .end local v18    # "Reserved1":[B
    .local v2, "Reserved1":[B
    .restart local v17    # "Hotkey":[B
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 168
    move-object/from16 v18, v2

    move-object/from16 v2, v20

    .end local v20    # "Reserved2":[B
    .local v2, "Reserved2":[B
    .restart local v18    # "Reserved1":[B
    :try_start_6
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 169
    move-object/from16 v20, v2

    move-object/from16 v2, v19

    .end local v19    # "Reserved3":[B
    .local v2, "Reserved3":[B
    .restart local v20    # "Reserved2":[B
    :try_start_7
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 170
    invoke-virtual {v1, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 171
    move-object/from16 v19, v2

    move-object/from16 v2, v16

    .end local v16    # "TerminalID":[B
    .local v2, "TerminalID":[B
    .restart local v19    # "Reserved3":[B
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 173
    array-length v0, v7

    if-lez v0, :cond_8

    invoke-virtual {v1, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 174
    :cond_8
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 177
    .end local v1    # "os":Ljava/io/FileOutputStream;
    move-object/from16 v16, v2

    goto/16 :goto_7

    .line 175
    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_6

    .line 155
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    move-object v2, v0

    goto :goto_4

    .end local v19    # "Reserved3":[B
    .local v2, "Reserved3":[B
    .restart local v16    # "TerminalID":[B
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v2, v16

    move-object v2, v0

    .end local v16    # "TerminalID":[B
    .local v2, "TerminalID":[B
    .restart local v19    # "Reserved3":[B
    goto :goto_4

    .end local v20    # "Reserved2":[B
    .local v2, "Reserved2":[B
    .restart local v16    # "TerminalID":[B
    :catchall_2
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    move-object v2, v0

    .end local v16    # "TerminalID":[B
    .local v2, "TerminalID":[B
    .restart local v20    # "Reserved2":[B
    goto :goto_4

    .end local v18    # "Reserved1":[B
    .local v2, "Reserved1":[B
    .restart local v16    # "TerminalID":[B
    :catchall_3
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    move-object v2, v0

    .end local v16    # "TerminalID":[B
    .local v2, "TerminalID":[B
    .restart local v18    # "Reserved1":[B
    goto :goto_4

    .end local v17    # "Hotkey":[B
    .local v2, "Hotkey":[B
    .restart local v16    # "TerminalID":[B
    :catchall_4
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    move-object v2, v0

    .end local v16    # "TerminalID":[B
    .local v2, "TerminalID":[B
    .restart local v17    # "Hotkey":[B
    goto :goto_4

    .end local v21    # "ShowCommand":[B
    .local v2, "ShowCommand":[B
    .restart local v16    # "TerminalID":[B
    :catchall_5
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v2, v16

    move-object v2, v0

    .end local v16    # "TerminalID":[B
    .local v2, "TerminalID":[B
    .restart local v21    # "ShowCommand":[B
    goto :goto_4

    .end local v22    # "IconIndex":[B
    .local v2, "IconIndex":[B
    .restart local v16    # "TerminalID":[B
    :catchall_6
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v2, v16

    move-object v2, v0

    .end local v16    # "TerminalID":[B
    .local v2, "TerminalID":[B
    .restart local v22    # "IconIndex":[B
    goto :goto_4

    .end local v29    # "HeaderSize":[B
    .local v2, "HeaderSize":[B
    .restart local v16    # "TerminalID":[B
    :catchall_7
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v2, v16

    move-object v2, v0

    .end local v2    # "HeaderSize":[B
    .restart local v29    # "HeaderSize":[B
    :goto_4
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object/from16 v30, v1

    goto :goto_5

    :catchall_8
    move-exception v0

    move-object/from16 v30, v1

    move-object v1, v0

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v30, "os":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "LinkCLSID":[B
    .end local v4    # "linkFlags":I
    .end local v5    # "LinkFlags":[B
    .end local v6    # "FileAttributes":[B
    .end local v7    # "StringData":[B
    .end local v8    # "IDList":[B
    .end local v9    # "CreationTime":[B
    .end local v10    # "WriteTime":[B
    .end local v11    # "AccessTime":[B
    .end local v12    # "FileSize":[B
    .end local v13    # "targetLeaf":[B
    .end local v14    # "endOfString":[B
    .end local v15    # "targetRoot":[B
    .end local v16    # "TerminalID":[B
    .end local v17    # "Hotkey":[B
    .end local v18    # "Reserved1":[B
    .end local v19    # "Reserved3":[B
    .end local v20    # "Reserved2":[B
    .end local v21    # "ShowCommand":[B
    .end local v22    # "IconIndex":[B
    .end local v23    # "prefixOfTarget":[B
    .end local v24    # "IDListItems":[B
    .end local v25    # "CLSIDNetwork":[B
    .end local v26    # "CLSIDComputer":[B
    .end local v27    # "itemData":[B
    .end local v28    # "prefixRoot":[B
    .end local v29    # "HeaderSize":[B
    .end local p0    # "options":Lcom/winlator/cmod/core/MSLink$Options;
    .end local p1    # "outputFile":Ljava/io/File;
    :goto_5
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 175
    .end local v30    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "LinkCLSID":[B
    .restart local v4    # "linkFlags":I
    .restart local v5    # "LinkFlags":[B
    .restart local v6    # "FileAttributes":[B
    .restart local v7    # "StringData":[B
    .restart local v8    # "IDList":[B
    .restart local v9    # "CreationTime":[B
    .restart local v10    # "WriteTime":[B
    .restart local v11    # "AccessTime":[B
    .restart local v12    # "FileSize":[B
    .restart local v13    # "targetLeaf":[B
    .restart local v14    # "endOfString":[B
    .restart local v15    # "targetRoot":[B
    .restart local v16    # "TerminalID":[B
    .restart local v17    # "Hotkey":[B
    .restart local v18    # "Reserved1":[B
    .restart local v19    # "Reserved3":[B
    .restart local v20    # "Reserved2":[B
    .restart local v21    # "ShowCommand":[B
    .restart local v22    # "IconIndex":[B
    .restart local v23    # "prefixOfTarget":[B
    .restart local v24    # "IDListItems":[B
    .restart local v25    # "CLSIDNetwork":[B
    .restart local v26    # "CLSIDComputer":[B
    .restart local v27    # "itemData":[B
    .restart local v28    # "prefixRoot":[B
    .restart local v29    # "HeaderSize":[B
    .restart local p0    # "options":Lcom/winlator/cmod/core/MSLink$Options;
    .restart local p1    # "outputFile":Ljava/io/File;
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v29    # "HeaderSize":[B
    .restart local v2    # "HeaderSize":[B
    :catch_2
    move-exception v0

    move-object/from16 v29, v2

    .line 176
    .end local v2    # "HeaderSize":[B
    .local v0, "e":Ljava/io/IOException;
    .restart local v29    # "HeaderSize":[B
    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7
    return-void

    :array_0
    .array-data 1
        0x4ct
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x31t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x32t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        -0x3dt
        0x1t
        -0x7ft
    .end array-data

    :array_b
    .array-data 1
        0x1ft
        0x58t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1ft
        0x50t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static createFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p0, "targetPath"    # Ljava/lang/String;
    .param p1, "outputFile"    # Ljava/io/File;

    .line 86
    new-instance v0, Lcom/winlator/cmod/core/MSLink$Options;

    invoke-direct {v0}, Lcom/winlator/cmod/core/MSLink$Options;-><init>()V

    .line 87
    .local v0, "options":Lcom/winlator/cmod/core/MSLink$Options;
    iput-object p0, v0, Lcom/winlator/cmod/core/MSLink$Options;->targetPath:Ljava/lang/String;

    .line 88
    invoke-static {v0, p1}, Lcom/winlator/cmod/core/MSLink;->createFile(Lcom/winlator/cmod/core/MSLink$Options;Ljava/io/File;)V

    .line 89
    return-void
.end method

.method private static generateIDLIST([B)[B
    .locals 3
    .param p0, "bytes"    # [B

    .line 81
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p0

    add-int/2addr v2, v0

    int-to-short v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    filled-new-array {v1, p0}, [[B

    move-result-object v1

    invoke-static {v1}, Lcom/winlator/cmod/core/ArrayUtils;->concat([[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static intToByteArray(I)[B
    .locals 2
    .param p0, "value"    # I

    .line 70
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static parseFilePath(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "lnkFile"    # Ljava/io/File;

    .line 181
    const-string v0, ""

    .line 184
    .local v0, "filePath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 185
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 186
    .local v2, "bytes":[B
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 187
    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 188
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 189
    .local v4, "data":Ljava/nio/ByteBuffer;
    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 190
    .local v5, "linkFlags":I
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_0

    .line 191
    const/16 v6, 0x4c

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    .line 192
    .local v6, "linkInfoTargetIdListSize":S
    add-int/lit8 v6, v6, 0x4e

    .line 193
    .local v6, "linkInfoStart":I
    goto :goto_0

    .line 194
    .end local v6    # "linkInfoStart":I
    :cond_0
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_2

    .line 195
    const/16 v6, 0x4c

    .line 201
    .restart local v6    # "linkInfoStart":I
    :goto_0
    add-int/lit8 v7, v6, 0x10

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    .line 202
    .local v7, "localBasePathOffset":I
    if-lez v7, :cond_1

    .line 203
    add-int v8, v6, v7

    invoke-static {v4, v8}, Lcom/winlator/cmod/core/StringUtils;->fromANSIString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 205
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 206
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "data":Ljava/nio/ByteBuffer;
    .end local v5    # "linkFlags":I
    .end local v6    # "linkInfoStart":I
    .end local v7    # "localBasePathOffset":I
    goto :goto_1

    .line 198
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "bytes":[B
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "data":Ljava/nio/ByteBuffer;
    .restart local v5    # "linkFlags":I
    :cond_2
    return-object v0

    .line 208
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "data":Ljava/nio/ByteBuffer;
    .end local v5    # "linkFlags":I
    :catch_0
    move-exception v1

    .line 211
    :goto_1
    return-object v0
.end method

.method private static stringSizePaddedToByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 75
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 65
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static twoCharsToByte(CC)B
    .locals 2
    .param p0, "chr1"    # C
    .param p1, "chr2"    # C

    .line 39
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Lcom/winlator/cmod/core/MSLink;->charToHexDigit(C)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Lcom/winlator/cmod/core/MSLink;->charToHexDigit(C)I

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method
