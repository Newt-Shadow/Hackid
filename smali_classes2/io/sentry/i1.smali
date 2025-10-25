.class public final synthetic Lio/sentry/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/l1$b;


# instance fields
.field public final synthetic a:Lio/sentry/l1;

.field public final synthetic b:Lio/sentry/m1;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/l1;Lio/sentry/m1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/i1;->a:Lio/sentry/l1;

    iput-object p2, p0, Lio/sentry/i1;->b:Lio/sentry/m1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/i1;->a:Lio/sentry/l1;

    iget-object v1, p0, Lio/sentry/i1;->b:Lio/sentry/m1;

    invoke-static {v0, v1}, Lio/sentry/l1;->c(Lio/sentry/l1;Lio/sentry/m1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
