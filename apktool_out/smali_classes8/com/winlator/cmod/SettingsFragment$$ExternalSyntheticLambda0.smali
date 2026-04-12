.class public final synthetic Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/winlator/cmod/SettingsFragment;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/SettingsFragment;

    iput-object p2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/winlator/cmod/SettingsFragment;

    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/winlator/cmod/SettingsFragment;->$r8$lambda$QFeA1AY1uzoQeFBxLTpSMTknAak(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
