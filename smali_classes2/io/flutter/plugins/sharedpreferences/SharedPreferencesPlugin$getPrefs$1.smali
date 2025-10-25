.class final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->getPrefs(Ljava/util/List;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin"
    f = "SharedPreferencesPlugin.kt"
    l = {
        0x100,
        0x102
    }
    m = "getPrefs"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Lad/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;",
            "Lad/e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->label:I

    iget-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getPrefs$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->access$getPrefs(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/util/List;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
