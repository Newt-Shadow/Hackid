.class public final synthetic Lgb/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgb/s;


# direct methods
.method public synthetic constructor <init>(Lgb/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgb/q;->a:Lgb/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/q;->a:Lgb/s;

    invoke-static {v0}, Lgb/s;->e(Lgb/s;)V

    return-void
.end method
