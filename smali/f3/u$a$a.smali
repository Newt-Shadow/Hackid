.class final Lf3/u$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/u$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Lf3/u;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lf3/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf3/u$a$a;->a:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lf3/u$a$a;->b:Lf3/u;

    .line 7
    .line 8
    return-void
.end method
