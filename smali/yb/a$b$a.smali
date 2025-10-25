.class public final Lyb/a$b$a;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/a$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyb/a$b;


# direct methods
.method constructor <init>(Lyb/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb/a$b$a;->a:Lyb/a$b;

    .line 2
    .line 3
    invoke-direct {p0}, Lzb/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyb/a$b$a;->a:Lyb/a$b;

    .line 2
    .line 3
    iget-object v0, v0, Lyb/a$b;->c:Lyb/a;

    .line 4
    .line 5
    invoke-static {v0}, Lyb/a;->c(Lyb/a;)Lyb/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lyb/a$b$a;->a:Lyb/a$b;

    .line 10
    .line 11
    iget-object v1, v1, Lyb/a$b;->b:Lyb/b;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lyb/g;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
