.class public final synthetic Lio/sentry/t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/y0;

.field public final synthetic b:Lio/sentry/t5;

.field public final synthetic c:Lio/sentry/z2;

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:Lio/sentry/ILogger;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lio/sentry/y0;Lio/sentry/t5;Lio/sentry/z2;Ljava/io/File;Lio/sentry/ILogger;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/t4;->a:Lio/sentry/y0;

    iput-object p2, p0, Lio/sentry/t4;->b:Lio/sentry/t5;

    iput-object p3, p0, Lio/sentry/t4;->c:Lio/sentry/z2;

    iput-object p4, p0, Lio/sentry/t4;->d:Ljava/io/File;

    iput-object p5, p0, Lio/sentry/t4;->e:Lio/sentry/ILogger;

    iput-boolean p6, p0, Lio/sentry/t4;->f:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/t4;->a:Lio/sentry/y0;

    iget-object v1, p0, Lio/sentry/t4;->b:Lio/sentry/t5;

    iget-object v2, p0, Lio/sentry/t4;->c:Lio/sentry/z2;

    iget-object v3, p0, Lio/sentry/t4;->d:Ljava/io/File;

    iget-object v4, p0, Lio/sentry/t4;->e:Lio/sentry/ILogger;

    iget-boolean v5, p0, Lio/sentry/t4;->f:Z

    invoke-static/range {v0 .. v5}, Lio/sentry/x4;->i(Lio/sentry/y0;Lio/sentry/t5;Lio/sentry/z2;Ljava/io/File;Lio/sentry/ILogger;Z)[B

    move-result-object v0

    return-object v0
.end method
