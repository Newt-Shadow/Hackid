.class public Lgf/e$a;
.super Ldf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldf/d;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public l()Lgf/e;
    .locals 2

    .line 1
    new-instance v0, Lgf/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldf/d;->g()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lgf/e;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
