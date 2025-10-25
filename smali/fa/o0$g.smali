.class Lfa/o0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfa/o0;->h(Lfa/o0$i;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfa/o0$i;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lfa/o0;


# direct methods
.method constructor <init>(Lfa/o0;Lfa/o0$i;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/o0$g;->c:Lfa/o0;

    .line 2
    .line 3
    iput-object p2, p0, Lfa/o0$g;->a:Lfa/o0$i;

    .line 4
    .line 5
    iput-object p3, p0, Lfa/o0$g;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfa/o0$g;->c:Lfa/o0;

    .line 2
    .line 3
    invoke-static {v0}, Lfa/o0;->c(Lfa/o0;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lfa/o0$g;->a:Lfa/o0$i;

    .line 8
    .line 9
    invoke-static {v1}, Lfa/o0$i;->b(Lfa/o0$i;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lfa/o0$g;->b:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
