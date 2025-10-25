.class public final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2"
    f = "SharedPreferencesPlugin.kt"
    l = {
        0xdf
    }
    m = "emit"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lad/e;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    iget-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1$2;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
