.class public final Lgb/s$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/s;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgb/s;


# direct methods
.method constructor <init>(Lgb/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgb/s$b;->a:Lgb/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/s$b;->a:Lgb/s;

    .line 2
    .line 3
    invoke-static {v0}, Lgb/s;->f(Lgb/s;)Leb/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Leb/h;->e()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
