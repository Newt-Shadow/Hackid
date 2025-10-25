.class final Ltd/e1$a;
.super Ltd/e1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final c:Ltd/l;

.field final synthetic d:Ltd/e1;


# direct methods
.method public constructor <init>(Ltd/e1;JLtd/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltd/e1$a;->d:Ltd/e1;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Ltd/e1$b;-><init>(J)V

    .line 4
    .line 5
    .line 6
    iput-object p4, p0, Ltd/e1$a;->c:Ltd/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltd/e1$a;->c:Ltd/l;

    .line 2
    .line 3
    iget-object v1, p0, Ltd/e1$a;->d:Ltd/e1;

    .line 4
    .line 5
    sget-object v2, Lxc/t;->a:Lxc/t;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Ltd/l;->i(Ltd/i0;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ltd/e1$b;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Ltd/e1$a;->c:Ltd/l;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
