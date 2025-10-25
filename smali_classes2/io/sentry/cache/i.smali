.class public final synthetic Lio/sentry/cache/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/util/m$a;


# instance fields
.field public final synthetic a:Lio/sentry/cache/t;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/i;->a:Lio/sentry/cache/t;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/cache/i;->a:Lio/sentry/cache/t;

    invoke-static {v0}, Lio/sentry/cache/t;->w(Lio/sentry/cache/t;)Lio/sentry/cache/tape/c;

    move-result-object v0

    return-object v0
.end method
