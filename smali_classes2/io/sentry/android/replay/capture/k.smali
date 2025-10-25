.class public final synthetic Lio/sentry/android/replay/capture/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/replay/capture/m;

.field public final synthetic b:Lid/Function2;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/capture/m;Lid/Function2;JII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/capture/k;->a:Lio/sentry/android/replay/capture/m;

    iput-object p2, p0, Lio/sentry/android/replay/capture/k;->b:Lid/Function2;

    iput-wide p3, p0, Lio/sentry/android/replay/capture/k;->c:J

    iput p5, p0, Lio/sentry/android/replay/capture/k;->d:I

    iput p6, p0, Lio/sentry/android/replay/capture/k;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/k;->a:Lio/sentry/android/replay/capture/m;

    iget-object v1, p0, Lio/sentry/android/replay/capture/k;->b:Lid/Function2;

    iget-wide v2, p0, Lio/sentry/android/replay/capture/k;->c:J

    iget v4, p0, Lio/sentry/android/replay/capture/k;->d:I

    iget v5, p0, Lio/sentry/android/replay/capture/k;->e:I

    invoke-static/range {v0 .. v5}, Lio/sentry/android/replay/capture/m;->E(Lio/sentry/android/replay/capture/m;Lid/Function2;JII)V

    return-void
.end method
