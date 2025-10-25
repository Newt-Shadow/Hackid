.class public final Li4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/g;


# instance fields
.field private final a:Lx4/j$a;


# direct methods
.method public constructor <init>(Lx4/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li4/c;->a:Lx4/j$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)Lx4/j;
    .locals 0

    .line 1
    iget-object p1, p0, Li4/c;->a:Lx4/j$a;

    .line 2
    .line 3
    invoke-interface {p1}, Lx4/j$a;->a()Lx4/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
