package io.appmetrica.analytics.coreutils.internal.collection;

import android.os.Bundle;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import rd.n;
import yc.e0;
import yc.g;
import yc.m;
/* loaded from: classes2.dex */
public final class CollectionUtils {
    public static final CollectionUtils INSTANCE = new CollectionUtils();

    private CollectionUtils() {
    }

    public static final boolean areCollectionsEqual(Collection<? extends Object> collection, Collection<? extends Object> collection2) {
        HashSet hashSet;
        if (collection == null && collection2 == null) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        if (collection instanceof HashSet) {
            hashSet = (HashSet) collection;
            collection = collection2;
        } else if (collection2 instanceof HashSet) {
            hashSet = (HashSet) collection2;
        } else {
            HashSet hashSet2 = new HashSet(collection);
            collection = collection2;
            hashSet = hashSet2;
        }
        for (Object obj : collection) {
            if (!hashSet.contains(obj)) {
                return false;
            }
        }
        return true;
    }

    public static final <T> List<T> arrayListCopyOfNullableCollection(Collection<? extends T> collection) {
        if (collection != null) {
            return m.k0(collection);
        }
        return null;
    }

    public static final Map<String, byte[]> bundleToMap(Bundle bundle) {
        HashMap hashMap = new HashMap();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                byte[] byteArray = bundle.getByteArray(str);
                if (byteArray != null) {
                    hashMap.put(str, byteArray);
                }
            }
        }
        return hashMap;
    }

    public static final <T> Map<String, T> convertMapKeysToLowerCase(Map<String, ? extends T> map) {
        String str;
        LinkedHashMap linkedHashMap = new LinkedHashMap(e0.b(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str2 = (String) entry.getKey();
            if (str2 != null) {
                str = str2.toLowerCase(Locale.getDefault());
            } else {
                str = null;
            }
            linkedHashMap.put(str, entry.getValue());
        }
        return linkedHashMap;
    }

    public static final <K, V> Map<K, V> copyOf(Map<K, V> map) {
        if (map != null && !map.isEmpty()) {
            return new HashMap(map);
        }
        return null;
    }

    public static final List<String> createSortedListWithoutRepetitions(String... strArr) {
        return unmodifiableListCopy(g.q(strArr));
    }

    public static final <T> T getFirstOrNull(List<? extends T> list) {
        if (list != null) {
            return (T) m.Q(list);
        }
        return null;
    }

    public static final <T> T getFromMapIgnoreCase(Map<String, ? extends T> map, String str) {
        T t10;
        Iterator<T> it = map.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                t10 = it.next();
                Map.Entry entry = (Map.Entry) t10;
                CharSequence charSequence = (CharSequence) entry.getKey();
                if (charSequence != null && charSequence.length() != 0 && n.x((String) entry.getKey(), str, true)) {
                    break;
                }
            } else {
                t10 = null;
                break;
            }
        }
        Map.Entry entry2 = (Map.Entry) t10;
        if (entry2 == null) {
            return null;
        }
        return (T) entry2.getValue();
    }

    public static final <K, V> List<Map.Entry<K, V>> getListFromMap(Map<K, ? extends V> map) {
        if (map != null) {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
                arrayList.add(new AbstractMap.SimpleEntry(entry));
            }
            return arrayList;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> getMapFromList(List<? extends Map.Entry<? extends K, ? extends V>> list) {
        if (list != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(od.g.b(e0.b(m.r(list, 10)), 16));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
            return linkedHashMap;
        }
        return new LinkedHashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> getMapFromListOrNull(List<? extends Map.Entry<? extends K, ? extends V>> list) {
        if (list != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(od.g.b(e0.b(m.r(list, 10)), 16));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
            return linkedHashMap;
        }
        return null;
    }

    public static final <K, V> V getOrDefault(Map<K, ? extends V> map, K k10, V v10) {
        V v11 = map.get(k10);
        if (v11 != null) {
            return v11;
        }
        return v10;
    }

    public static final Set<Integer> hashSetFromIntArray(int[] iArr) {
        return g.N(iArr);
    }

    public static final boolean isNullOrEmpty(Collection<?> collection) {
        if (collection != null && !collection.isEmpty()) {
            return false;
        }
        return true;
    }

    public static final <K, V> Map<K, V> mapCopyOfNullableMap(Map<K, ? extends V> map) {
        if (map != null) {
            return e0.q(map);
        }
        return null;
    }

    public static final Bundle mapToBundle(Map<String, byte[]> map) {
        Bundle bundle = new Bundle(map.size());
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            bundle.putByteArray(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> nullIfEmptyList(List<? extends T> list) {
        if (list == 0 || !(!list.isEmpty())) {
            return null;
        }
        return list;
    }

    public static final <K, V> void putOpt(Map<K, V> map, K k10, V v10) {
        if (k10 != null && v10 != null) {
            map.put(k10, v10);
        }
    }

    public static final List<Integer> toIntList(int[] iArr) {
        return g.P(iArr);
    }

    public static final <T> List<T> unmodifiableListCopy(Collection<? extends T> collection) {
        return Collections.unmodifiableList(new ArrayList(collection));
    }

    public static final <K, V> Map<K, V> unmodifiableMapCopy(Map<K, ? extends V> map) {
        return Collections.unmodifiableMap(new HashMap(map));
    }

    public static final <K, V> Map<K, V> unmodifiableSameOrderMapCopy(Map<K, ? extends V> map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static final <T> Set<T> unmodifiableSetOf(T... tArr) {
        return Collections.unmodifiableSet(g.O(tArr));
    }
}
