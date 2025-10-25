.class public final synthetic Lio/sentry/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/util/j$a;


# instance fields
.field public final synthetic a:Lio/sentry/x;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/u;->a:Lio/sentry/x;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/u;->a:Lio/sentry/x;

    check-cast p1, Lio/sentry/hints/i;

    invoke-static {v0, p1}, Lio/sentry/x;->h(Lio/sentry/x;Lio/sentry/hints/i;)V

    return-void
.end method
