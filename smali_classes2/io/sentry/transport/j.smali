.class public final synthetic Lio/sentry/transport/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/util/j$b;


# instance fields
.field public final synthetic a:Lio/sentry/transport/e$c;

.field public final synthetic b:Lio/sentry/a4;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/transport/e$c;Lio/sentry/a4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/j;->a:Lio/sentry/transport/e$c;

    iput-object p2, p0, Lio/sentry/transport/j;->b:Lio/sentry/a4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/transport/j;->a:Lio/sentry/transport/e$c;

    iget-object v1, p0, Lio/sentry/transport/j;->b:Lio/sentry/a4;

    invoke-static {v0, v1, p1, p2}, Lio/sentry/transport/e$c;->a(Lio/sentry/transport/e$c;Lio/sentry/a4;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
