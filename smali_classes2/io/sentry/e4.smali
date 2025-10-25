.class public final synthetic Lio/sentry/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/x4$a;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/x4$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/e4;->a:Lio/sentry/x4$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/e4;->a:Lio/sentry/x4$a;

    invoke-static {v0}, Lio/sentry/x4;->j(Lio/sentry/x4$a;)[B

    move-result-object v0

    return-object v0
.end method
