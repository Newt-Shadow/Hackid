.class final Lio/sentry/android/replay/a$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lio/sentry/android/replay/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/a$a;

    invoke-direct {v0}, Lio/sentry/android/replay/a$a;-><init>()V

    sput-object v0, Lio/sentry/android/replay/a$a;->e:Lio/sentry/android/replay/a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lrd/l;
    .locals 2

    .line 1
    new-instance v0, Lrd/l;

    .line 2
    .line 3
    const-string v1, "_[a-z]"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lrd/l;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/replay/a$a;->b()Lrd/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
