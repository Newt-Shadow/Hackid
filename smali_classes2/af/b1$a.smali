.class public final Laf/b1$a;
.super Laf/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laf/b1;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(J)Laf/b1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Laf/b1;
    .locals 0

    .line 1
    const-string p1, "unit"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
