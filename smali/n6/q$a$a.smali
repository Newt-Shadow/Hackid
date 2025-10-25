.class Ln6/q$a$a;
.super Ln6/q$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln6/q$a;->b(Ln6/q;Ljava/lang/CharSequence;)Ln6/q$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Ln6/q$a;


# direct methods
.method constructor <init>(Ln6/q$a;Ln6/q;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln6/q$a$a;->h:Ln6/q$a;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Ln6/q$b;-><init>(Ln6/q;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method f(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method g(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Ln6/q$a$a;->h:Ln6/q$a;

    .line 2
    .line 3
    iget-object v0, v0, Ln6/q$a;->a:Ln6/d;

    .line 4
    .line 5
    iget-object v1, p0, Ln6/q$b;->c:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Ln6/d;->c(Ljava/lang/CharSequence;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
