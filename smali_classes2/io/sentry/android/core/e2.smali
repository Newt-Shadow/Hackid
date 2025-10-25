.class public final synthetic Lio/sentry/android/core/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;

.field public final synthetic b:J

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;JLandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/e2;->a:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;

    iput-wide p2, p0, Lio/sentry/android/core/e2;->b:J

    iput-object p4, p0, Lio/sentry/android/core/e2;->c:Landroid/content/Intent;

    iput-object p5, p0, Lio/sentry/android/core/e2;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lio/sentry/android/core/e2;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/e2;->a:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;

    iget-wide v1, p0, Lio/sentry/android/core/e2;->b:J

    iget-object v3, p0, Lio/sentry/android/core/e2;->c:Landroid/content/Intent;

    iget-object v4, p0, Lio/sentry/android/core/e2;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lio/sentry/android/core/e2;->e:Z

    invoke-static/range {v0 .. v5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;->a(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$a;JLandroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method
