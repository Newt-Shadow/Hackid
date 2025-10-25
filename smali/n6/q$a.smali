.class Ln6/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln6/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln6/q;->e(Ln6/d;)Ln6/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ln6/d;


# direct methods
.method constructor <init>(Ln6/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln6/q$a;->a:Ln6/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ln6/q;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln6/q$a;->b(Ln6/q;Ljava/lang/CharSequence;)Ln6/q$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Ln6/q;Ljava/lang/CharSequence;)Ln6/q$b;
    .locals 1

    .line 1
    new-instance v0, Ln6/q$a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ln6/q$a$a;-><init>(Ln6/q$a;Ln6/q;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
