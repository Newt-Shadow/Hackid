.class public interface abstract Lio/sentry/android/replay/capture/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/h$a;,
        Lio/sentry/android/replay/capture/h$c;,
        Lio/sentry/android/replay/capture/h$b;
    }
.end annotation


# static fields
.field public static final a:Lio/sentry/android/replay/capture/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/sentry/android/replay/capture/h$a;->a:Lio/sentry/android/replay/capture/h$a;

    sput-object v0, Lio/sentry/android/replay/capture/h;->a:Lio/sentry/android/replay/capture/h$a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/MotionEvent;)V
.end method

.method public abstract b(Lio/sentry/android/replay/u;)V
.end method

.method public abstract c(Lio/sentry/android/replay/u;ILio/sentry/protocol/r;Lio/sentry/t5$b;)V
.end method

.method public abstract d(ZLid/l;)V
.end method

.method public abstract e()Lio/sentry/protocol/r;
.end method

.method public abstract f(Landroid/graphics/Bitmap;Lid/Function2;)V
.end method

.method public abstract g()Lio/sentry/android/replay/capture/h;
.end method

.method public abstract h(Ljava/util/Date;)V
.end method

.method public abstract i(I)V
.end method

.method public abstract j()Ljava/io/File;
.end method

.method public abstract k()I
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract stop()V
.end method
