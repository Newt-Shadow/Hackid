.class final Lr/a$b;
.super Lr/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lr/a;


# direct methods
.method constructor <init>(Lr/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr/a$b;->d:Lr/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lr/i;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lr/e;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected b(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lr/a$b;->d:Lr/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lr/i;->g(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr/a$b;->d:Lr/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lr/i;->i(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
