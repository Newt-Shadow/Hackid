.class Ln/b$b;
.super Ln/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Ln/b$c;Ln/b$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln/b$e;-><init>(Ln/b$c;Ln/b$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method c(Ln/b$c;)Ln/b$c;
    .locals 0

    .line 1
    iget-object p1, p1, Ln/b$c;->c:Ln/b$c;

    .line 2
    .line 3
    return-object p1
.end method

.method d(Ln/b$c;)Ln/b$c;
    .locals 0

    .line 1
    iget-object p1, p1, Ln/b$c;->d:Ln/b$c;

    .line 2
    .line 3
    return-object p1
.end method
