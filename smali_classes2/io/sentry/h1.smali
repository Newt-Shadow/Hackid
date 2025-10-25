.class public final synthetic Lio/sentry/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/l1$b;


# instance fields
.field public final synthetic a:Lio/sentry/m1;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/m1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/h1;->a:Lio/sentry/m1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/h1;->a:Lio/sentry/m1;

    invoke-static {v0}, Lio/sentry/l1;->b(Lio/sentry/m1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
