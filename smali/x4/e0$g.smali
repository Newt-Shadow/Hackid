.class final Lx4/e0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Lx4/e0$f;


# direct methods
.method public constructor <init>(Lx4/e0$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx4/e0$g;->a:Lx4/e0$f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/e0$g;->a:Lx4/e0$f;

    .line 2
    .line 3
    invoke-interface {v0}, Lx4/e0$f;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
