.class public final synthetic Lio/sentry/android/replay/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e3;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/c0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/k;->a:Lkotlin/jvm/internal/c0;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/u0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/k;->a:Lkotlin/jvm/internal/c0;

    invoke-static {v0, p1}, Lio/sentry/android/replay/ReplayIntegration;->j(Lkotlin/jvm/internal/c0;Lio/sentry/u0;)V

    return-void
.end method
