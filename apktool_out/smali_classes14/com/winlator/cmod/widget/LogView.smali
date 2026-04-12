.class public Lcom/winlator/cmod/widget/LogView;
.super Landroid/view/View;
.source "LogView.java"


# static fields
.field private static fileName:Ljava/lang/String;


# instance fields
.field private final defaultTextSize:F

.field private isActionDown:Z

.field private final lastPoint:Landroid/graphics/PointF;

.field private final lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final minScrollThumbSize:F

.field private final paint:Landroid/graphics/Paint;

.field private final rowHeight:F

.field private final scrollPosition:Landroid/graphics/PointF;

.field private final scrollSize:Landroid/graphics/PointF;

.field private scrollingHorizontally:Z

.field private scrollingVertically:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/winlator/cmod/widget/LogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/winlator/cmod/widget/LogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/winlator/cmod/widget/LogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/widget/LogView;->lines:Ljava/util/ArrayList;

    .line 32
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/widget/LogView;->rowHeight:F

    .line 33
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/widget/LogView;->defaultTextSize:F

    .line 34
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/winlator/cmod/widget/LogView;->minScrollThumbSize:F

    .line 35
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    .line 36
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    .line 37
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/widget/LogView;->isActionDown:Z

    .line 40
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/LogView;->scrollingHorizontally:Z

    .line 41
    iput-boolean v0, p0, Lcom/winlator/cmod/widget/LogView;->scrollingVertically:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/winlator/cmod/widget/LogView;->lock:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method private computeScrollSize()V
    .locals 7

    .line 162
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getWidth()I

    move-result v0

    .line 163
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getHeight()I

    move-result v1

    .line 164
    .local v1, "height":I
    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    const/4 v2, 0x0

    .line 167
    .local v2, "maxWidth":F
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/winlator/cmod/widget/LogView;->defaultTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/winlator/cmod/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v5, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/winlator/cmod/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "i":I
    .end local v4    # "count":I
    :cond_1
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 170
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v4, p0, Lcom/winlator/cmod/widget/LogView;->rowHeight:F

    iget-object v5, p0, Lcom/winlator/cmod/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 171
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getScrollMaxTop()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 172
    return-void

    .line 164
    .end local v2    # "maxWidth":F
    :cond_2
    :goto_1
    return-void
.end method

.method private drawScrollThumbs(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 113
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getScrollThumbX()F

    move-result v8

    .line 114
    .local v8, "scrollThumbX":F
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getScrollThumbY()F

    move-result v9

    .line 115
    .local v9, "scrollThumbY":F
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getScrollThumbWidth()F

    move-result v10

    .line 116
    .local v10, "scrollThumbWidth":F
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getScrollThumbHeight()F

    move-result v11

    .line 118
    .local v11, "scrollThumbHeight":F
    iget-object v0, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget v0, p0, Lcom/winlator/cmod/widget/LogView;->minScrollThumbSize:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v12, v0, v1

    .line 121
    .local v12, "radius":F
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/winlator/cmod/widget/LogView;->minScrollThumbSize:F

    sub-float v2, v0, v1

    add-float v3, v8, v10

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v7, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v5, v12

    move v6, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/winlator/cmod/widget/LogView;->minScrollThumbSize:F

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-float v4, v9, v11

    iget-object v7, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 123
    return-void
.end method

.method public static getLogFile(Landroid/content/Context;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 193
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "winlator_path_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "winlatorPath":Ljava/lang/String;
    const-string v2, "logs"

    if-eqz v1, :cond_0

    .line 198
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 199
    .local v3, "winlatorUri":Landroid/net/Uri;
    new-instance v4, Ljava/io/File;

    invoke-static {p0, v3}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 200
    .end local v3    # "winlatorUri":Landroid/net/Uri;
    .local v2, "logsDir":Ljava/io/File;
    goto :goto_0

    .line 202
    .end local v2    # "logsDir":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_WINLATOR_PATH:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 205
    .restart local v2    # "logsDir":Ljava/io/File;
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 208
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/winlator/cmod/widget/LogView;->fileName:Ljava/lang/String;

    const-string v5, "\\s"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const-string v5, "yyyy-MM-dd_HH-mm-ss"

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "logFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v4
.end method

.method public static setFilename(Ljava/lang/String;)V
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .line 189
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/widget/LogView;->fileName:Ljava/lang/String;

    .line 190
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/winlator/cmod/widget/LogView;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->lines:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0}, Lcom/winlator/cmod/widget/LogView;->computeScrollSize()V

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/winlator/cmod/widget/LogView;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->postInvalidate()V

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getScrollMaxLeft()F
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getScrollMaxTop()F
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getScrollThumbHeight()F
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 155
    .local v0, "height":F
    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getScrollMaxTop()F

    move-result v1

    iget-object v2, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    iget v2, p0, Lcom/winlator/cmod/widget/LogView;->minScrollThumbSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 158
    :cond_0
    return v2
.end method

.method public getScrollThumbWidth()F
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 147
    .local v0, "width":F
    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getScrollMaxLeft()F

    move-result v1

    iget-object v2, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    iget v2, p0, Lcom/winlator/cmod/widget/LogView;->minScrollThumbSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 150
    :cond_0
    return v2
.end method

.method public getScrollThumbX()F
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 135
    .local v0, "width":F
    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float v2, v0, v2

    mul-float/2addr v1, v2

    return v1

    .line 136
    :cond_0
    const v1, -0x800001

    return v1
.end method

.method public getScrollThumbY()F
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 141
    .local v0, "height":F
    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/winlator/cmod/widget/LogView;->scrollSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float v2, v0, v2

    mul-float/2addr v1, v2

    return v1

    .line 142
    :cond_0
    const v1, -0x800001

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getWidth()I

    move-result v0

    .line 70
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getHeight()I

    move-result v1

    .line 72
    .local v1, "height":I
    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/winlator/cmod/widget/LogView;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_1

    .line 78
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/winlator/cmod/core/UnitUtils;->dpToPx(F)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    const v5, -0x424243

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f100182

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "text":Ljava/lang/String;
    int-to-float v5, v0

    iget-object v6, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    .line 82
    .local v5, "centerX":F
    int-to-float v6, v1

    iget-object v7, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    iget-object v4, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v6, v4

    .line 83
    .local v6, "centerY":F
    iget-object v4, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 84
    monitor-exit v2

    return-void

    .line 87
    .end local v3    # "text":Ljava/lang/String;
    .end local v5    # "centerX":F
    .end local v6    # "centerY":F
    :cond_1
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/winlator/cmod/widget/LogView;->defaultTextSize:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v3

    .line 90
    .local v3, "textHeight":F
    iget-object v5, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    neg-float v5, v5

    .line 93
    .local v5, "rowY":F
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, p0, Lcom/winlator/cmod/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "count":I
    :goto_0
    if-ge v6, v7, :cond_5

    .line 94
    iget v8, p0, Lcom/winlator/cmod/widget/LogView;->rowHeight:F

    add-float/2addr v8, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_4

    int-to-float v8, v1

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_2

    goto :goto_2

    .line 99
    :cond_2
    iget-object v8, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    rem-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_3

    const v9, -0x1e0a02

    goto :goto_1

    :cond_3
    const/4 v9, -0x1

    :goto_1
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v8, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    neg-float v9, v8

    int-to-float v11, v0

    iget v8, p0, Lcom/winlator/cmod/widget/LogView;->rowHeight:F

    add-float v12, v5, v8

    iget-object v13, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    move-object v8, p1

    move v10, v5

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    iget-object v8, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    const v9, -0xdededf

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v8, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float v8, v5, v8

    iget v9, p0, Lcom/winlator/cmod/widget/LogView;->rowHeight:F

    sub-float/2addr v9, v3

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    .line 104
    .local v8, "centerY":F
    iget-object v9, p0, Lcom/winlator/cmod/widget/LogView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    neg-float v10, v10

    iget-object v11, p0, Lcom/winlator/cmod/widget/LogView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v8, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    iget v9, p0, Lcom/winlator/cmod/widget/LogView;->rowHeight:F

    add-float/2addr v5, v9

    goto :goto_3

    .line 95
    .end local v8    # "centerY":F
    :cond_4
    :goto_2
    iget v8, p0, Lcom/winlator/cmod/widget/LogView;->rowHeight:F

    add-float/2addr v5, v8

    .line 96
    nop

    .line 93
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    .end local v6    # "i":I
    .end local v7    # "count":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/winlator/cmod/widget/LogView;->drawScrollThumbs(Landroid/graphics/Canvas;)V

    .line 109
    .end local v3    # "textHeight":F
    .end local v5    # "rowY":F
    monitor-exit v2

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 72
    :cond_6
    :goto_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 63
    invoke-direct {p0}, Lcom/winlator/cmod/widget/LogView;->computeScrollSize()V

    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 222
    :pswitch_0
    iget-boolean v0, p0, Lcom/winlator/cmod/widget/LogView;->isActionDown:Z

    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/winlator/cmod/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 224
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    .line 226
    .local v1, "dy":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iput-boolean v2, p0, Lcom/winlator/cmod/widget/LogView;->scrollingHorizontally:Z

    .line 227
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iput-boolean v2, p0, Lcom/winlator/cmod/widget/LogView;->scrollingVertically:Z

    .line 229
    :cond_1
    iget-boolean v3, p0, Lcom/winlator/cmod/widget/LogView;->scrollingHorizontally:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 230
    invoke-static {v2}, Lcom/winlator/cmod/contentdialog/DebugDialog;->setPaused(Z)V

    .line 231
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v0

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getScrollMaxLeft()F

    move-result v6

    invoke-static {v5, v4, v6}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v5

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 232
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 233
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->invalidate()V

    .line 236
    :cond_2
    iget-boolean v3, p0, Lcom/winlator/cmod/widget/LogView;->scrollingVertically:Z

    if-eqz v3, :cond_3

    .line 237
    invoke-static {v2}, Lcom/winlator/cmod/contentdialog/DebugDialog;->setPaused(Z)V

    .line 238
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/winlator/cmod/widget/LogView;->scrollPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v1

    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->getScrollMaxTop()F

    move-result v6

    invoke-static {v5, v4, v6}, Lcom/winlator/cmod/math/Mathf;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 239
    iget-object v3, p0, Lcom/winlator/cmod/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 240
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/LogView;->invalidate()V

    .line 242
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :cond_3
    goto :goto_0

    .line 245
    :pswitch_1
    invoke-static {v1}, Lcom/winlator/cmod/contentdialog/DebugDialog;->setPaused(Z)V

    .line 246
    iput-boolean v1, p0, Lcom/winlator/cmod/widget/LogView;->isActionDown:Z

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v0, p0, Lcom/winlator/cmod/widget/LogView;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 217
    iput-boolean v2, p0, Lcom/winlator/cmod/widget/LogView;->isActionDown:Z

    .line 218
    iput-boolean v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollingHorizontally:Z

    .line 219
    iput-boolean v1, p0, Lcom/winlator/cmod/widget/LogView;->scrollingVertically:Z

    .line 220
    nop

    .line 250
    :cond_4
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
