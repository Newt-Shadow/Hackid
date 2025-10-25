.class public final Lb$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb;->b(Lio/flutter/embedding/engine/plugins/PluginRegistry;Ljava/lang/String;Lb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb;

.field final synthetic b:Lio/flutter/embedding/engine/plugins/PluginRegistry;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lb;


# direct methods
.method public constructor <init>(Lb;Lio/flutter/embedding/engine/plugins/PluginRegistry;Ljava/lang/String;Lb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb$a;->a:Lb;

    .line 2
    .line 3
    iput-object p2, p0, Lb$a;->b:Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 4
    .line 5
    iput-object p3, p0, Lb$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lb$a;->d:Lb;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb$a;->a:Lb;

    .line 2
    .line 3
    iget-object v1, p0, Lb$a;->b:Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 4
    .line 5
    iget-object v2, p0, Lb$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lb$a;->d:Lb;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lb;->b(Lio/flutter/embedding/engine/plugins/PluginRegistry;Ljava/lang/String;Lb;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
