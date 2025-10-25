.class final synthetic Lg6/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/q;


# instance fields
.field private final a:Lg6/b;


# direct methods
.method constructor <init>(Lg6/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/w;->a:Lg6/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg6/w;->a:Lg6/b;

    check-cast p1, Ld6/n;

    check-cast p2, Lm6/l;

    invoke-virtual {v0, p1, p2}, Lg6/b;->D(Ld6/n;Lm6/l;)V

    return-void
.end method
