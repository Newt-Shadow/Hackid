.class final Ld6/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/j$b;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/LocationAvailability;


# direct methods
.method constructor <init>(Ld6/l;Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld6/k;->a:Lcom/google/android/gms/location/LocationAvailability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lg6/LocationCallback;

    .line 2
    .line 3
    iget-object v0, p0, Ld6/k;->a:Lcom/google/android/gms/location/LocationAvailability;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lg6/LocationCallback;->onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
