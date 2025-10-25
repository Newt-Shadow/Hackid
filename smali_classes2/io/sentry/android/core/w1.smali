.class public final synthetic Lio/sentry/android/core/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q3$a;


# instance fields
.field public final synthetic a:Lio/sentry/ILogger;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lio/sentry/q3$a;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/q3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/w1;->a:Lio/sentry/ILogger;

    iput-object p2, p0, Lio/sentry/android/core/w1;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/sentry/android/core/w1;->c:Lio/sentry/q3$a;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/s5;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/w1;->a:Lio/sentry/ILogger;

    iget-object v1, p0, Lio/sentry/android/core/w1;->b:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/w1;->c:Lio/sentry/q3$a;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1, v2, p1}, Lio/sentry/android/core/y1;->a(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/q3$a;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
